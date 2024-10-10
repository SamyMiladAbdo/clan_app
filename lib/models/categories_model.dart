class CategoriesModel {
  int? count;
  String? next;
  Null? previous;
  int? currentPage;
  int? totalPages;
  List<Results>? results;

  CategoriesModel(
      {this.count,
      this.next,
      this.previous,
      this.currentPage,
      this.totalPages,
      this.results});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
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
  //TODO show this List type
  List<String>? children;
  String? createdAt;
  String? updatedAt;
  String? uid;
  String? name;
  String? nameEn;
  Null? image;
  Null? parent;

  Results(
      {this.id,
      this.children,
      this.createdAt,
      this.updatedAt,
      this.uid,
      this.name,
      this.nameEn,
      this.image,
      this.parent});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['children'] != null) {
      children = <String>[];
      json['children'].forEach((v) {
        // children!.add(new String.fromJson(v));
      });
    }
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    uid = json['uid'];
    name = json['name'];
    nameEn = json['name_en'];
    image = json['image'];
    parent = json['parent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.children != null) {
      // data['children'] = this.children!.map((v) => v.toJson()).toList();
    }
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['name_en'] = this.nameEn;
    data['image'] = this.image;
    data['parent'] = this.parent;
    return data;
  }
}
