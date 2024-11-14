class PondModel {
  late int id;
  // late int userId;
  String? name;
  double? volume;
  String? createdAt;
  String? updatedAt;
  String? img;
  int? relay_condition;
  // int? detailsCount;

  PondModel({
    required this.id,
    // required this.userId,
    this.name,
    this.volume,
    this.createdAt,
    this.updatedAt,
    this.img,
    this.relay_condition,
    // this.detailsCount,
  });

  PondModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    // userId = json['user_id'];
    name = json['name'];
    volume = json['volume'].toDouble();
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    img = json['img'];
    relay_condition = json['relay_condition'];
    // detailsCount = json['details_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    // data['user_id'] = this.id;
    data['volume'] = this.volume;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['img'] = this.img;
    data['relay_condition'] = this.relay_condition;
    // data['details_count'] = this.detailsCount;
    return data;
  }
}
