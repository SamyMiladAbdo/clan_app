class ProductsModel {
  int? count;
  String? next;
  Null previous;
  int? currentPage;
  int? totalPages;
  List<Results>? results;

  ProductsModel(
      {this.count,
      this.next,
      this.previous,
      this.currentPage,
      this.totalPages,
      this.results});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    currentPage = json['current_page'];
    totalPages = json['total_pages'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['next'] = this.next;
    data['previous'] = this.previous;
    data['current_page'] = this.currentPage;
    data['total_pages'] = this.totalPages;
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int? id;
  int? supGroups;
  String? createdAt;
  String? updatedAt;
  String? uid;
  String? number;
  String? name;
  String? nameEn;
  int? profitMargin;
  Null parent;

  //TODO chick String type
  List<String>? images;

  Results(
      {this.id,
      this.supGroups,
      this.createdAt,
      this.updatedAt,
      this.uid,
      this.number,
      this.name,
      this.nameEn,
      this.profitMargin,
      this.parent,
      this.images});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    supGroups = json['sup_groups'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    uid = json['uid'];
    number = json['number'];
    name = json['name'];
    nameEn = json['name_en'];
    profitMargin = json['profit_margin'];
    parent = json['parent'];
    if (json['images'] != null) {
      images = <String>[];
      // json['images'].forEach((v) {
      //   // images!.add(new String.fromJson(v));
      // });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sup_groups'] = this.supGroups;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['uid'] = this.uid;
    data['number'] = this.number;
    data['name'] = this.name;
    data['name_en'] = this.nameEn;
    data['profit_margin'] = this.profitMargin;
    data['parent'] = this.parent;
    if (this.images != null) {
      // data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
