class ProductModel {
  String? title;
  String? descrition;
  String? image;

  ProductModel({this.title, this.descrition, this.image});

  ProductModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    descrition = json['descrition'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['descrition'] = descrition;
    data['image'] = image;
    return data;
  }
}
