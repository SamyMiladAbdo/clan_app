class CreateNewCartModel {
  int? id;
  String? uid;
  String? deliveryType;
  List<Null>? items;
  String? browsingKey;
  String? address;

  CreateNewCartModel(
      {this.id,
      this.uid,
      this.deliveryType,
      this.items,
      this.browsingKey,
      this.address});

  CreateNewCartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uid = json['uid'];
    deliveryType = json['delivery_type'];
    if (json['items'] != null) {
      items = <Null>[];
      json['items'].forEach((v) {
        // items!.add(new Null.fromJson(v));
      });
    }
    browsingKey = json['browsing_key'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['delivery_type'] = this.deliveryType;
    if (this.items != null) {
      // data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    data['browsing_key'] = this.browsingKey;
    data['address'] = this.address;
    return data;
  }
}
