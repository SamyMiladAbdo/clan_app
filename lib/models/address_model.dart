class AddressModel {
  int? count;
  Null? next;
  Null? previous;
  int? currentPage;
  int? totalPages;
  List<Results?>? results;

  AddressModel(
      {this.count,
      this.next,
      this.previous,
      this.currentPage,
      this.totalPages,
      this.results});

  AddressModel.fromJson(Map<String, dynamic> json) {
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
      data['results'] = this.results!.map((v) => v!.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int? id;
  String? createdAt;
  String? updatedAt;
  String? uid;
  String? name;
  String? streetName;
  Null? nameEn;
  Null? streetNameEn;
  String? streetNumber;
  String? location;
  bool? isDefault;
  User? user;
  Country? country;
  Country? region;
  Country? subRegion;
  Country? city;
  List<Null>? images;

  Results(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.uid,
      this.name,
      this.streetName,
      this.nameEn,
      this.streetNameEn,
      this.streetNumber,
      this.location,
      this.isDefault,
      this.user,
      this.country,
      this.region,
      this.subRegion,
      this.city,
      this.images});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    uid = json['uid'];
    name = json['name'];
    streetName = json['street_name'];
    nameEn = json['name_en'];
    streetNameEn = json['street_name_en'];
    streetNumber = json['street_number'];
    location = json['location'];
    isDefault = json['is_default'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    country =
        json['country'] != null ? new Country.fromJson(json['country']) : null;
    region =
        json['region'] != null ? new Country.fromJson(json['region']) : null;
    subRegion = json['sub_region'] != null
        ? new Country.fromJson(json['sub_region'])
        : null;
    city = json['city'] != null ? new Country.fromJson(json['city']) : null;
    if (json['images'] != null) {
      images = <Null>[];
      // json['images'].forEach((v) {
      //   images!.add(new Null.fromJson(v));
      // });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['street_name'] = this.streetName;
    data['name_en'] = this.nameEn;
    data['street_name_en'] = this.streetNameEn;
    data['street_number'] = this.streetNumber;
    data['location'] = this.location;
    data['is_default'] = this.isDefault;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
    if (this.region != null) {
      data['region'] = this.region!.toJson();
    }
    if (this.subRegion != null) {
      data['sub_region'] = this.subRegion!.toJson();
    }
    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }
    // if (this.images != null) {
    //   data['images'] = this.images!.map((v) => v.to).toList();
    // }
    return data;
  }
}

class User {
  int? id;
  String? uid;

  User({this.id, this.uid});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    return data;
  }
}

class Country {
  String? name;
  String? nameEn;
  int? id;

  Country({this.name, this.nameEn, this.id});

  Country.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    nameEn = json['name_en'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['name_en'] = this.nameEn;
    data['id'] = this.id;
    return data;
  }
}
