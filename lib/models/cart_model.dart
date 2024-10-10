class CartModel {
  int? count;
  Null? next;
  Null? previous;
  int? currentPage;
  int? totalPages;
  List<Results>? results;

  CartModel(
      {this.count,
      this.next,
      this.previous,
      this.currentPage,
      this.totalPages,
      this.results});

  CartModel.fromJson(Map<String, dynamic> json) {
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
  String? createdAt;
  String? updatedAt;
  String? uid;
  int? quantity;
  String? priceCurrency;
  String? price;
  Null? priceId;
  Null? offerId;
  Null? offerValue;
  Cart? cart;
  Product? product;
  Product? unit;
  Null? priceType;
  Null? offerType;

  Results(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.uid,
      this.quantity,
      this.priceCurrency,
      this.price,
      this.priceId,
      this.offerId,
      this.offerValue,
      this.cart,
      this.product,
      this.unit,
      this.priceType,
      this.offerType});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    uid = json['uid'];
    quantity = json['quantity'];
    priceCurrency = json['price_currency'];
    price = json['price'];
    priceId = json['price_id'];
    offerId = json['offer_id'];
    offerValue = json['offer_value'];
    cart = json['cart'] != null ? new Cart.fromJson(json['cart']) : null;
    product =
        json['product'] != null ? new Product.fromJson(json['product']) : null;
    unit = json['unit'] != null ? new Product.fromJson(json['unit']) : null;
    priceType = json['price_type'];
    offerType = json['offer_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['uid'] = this.uid;
    data['quantity'] = this.quantity;
    data['price_currency'] = this.priceCurrency;
    data['price'] = this.price;
    data['price_id'] = this.priceId;
    data['offer_id'] = this.offerId;
    data['offer_value'] = this.offerValue;
    if (this.cart != null) {
      data['cart'] = this.cart!.toJson();
    }
    if (this.product != null) {
      data['product'] = this.product!.toJson();
    }
    if (this.unit != null) {
      data['unit'] = this.unit!.toJson();
    }
    data['price_type'] = this.priceType;
    data['offer_type'] = this.offerType;
    return data;
  }
}

class Cart {
  int? id;
  String? uid;

  Cart({this.id, this.uid});

  Cart.fromJson(Map<String, dynamic> json) {
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

class Product {
  String? name;
  String? nameEn;
  int? id;

  Product({this.name, this.nameEn, this.id});

  Product.fromJson(Map<String, dynamic> json) {
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
