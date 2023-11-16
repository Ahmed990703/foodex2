/// status : true
/// data : [{"id":13,"name":"chicken","pic":"public/categ/1696452158.Untitled.png","created_at":"2023-10-04T20:42:38.000000Z","updated_at":"2023-10-04T20:42:38.000000Z"},{"id":11,"name":"cat3","pic":"public/categ/1691872849.burger.jpg","created_at":"2023-08-12T20:40:49.000000Z","updated_at":"2023-08-12T20:40:49.000000Z"},{"id":10,"name":"cat3","pic":"public/categ/1691872453.burger.jpg","created_at":"2023-08-12T20:34:13.000000Z","updated_at":"2023-08-12T20:34:13.000000Z"},{"id":8,"name":"crepe","pic":null,"created_at":"2023-06-23T19:00:33.000000Z","updated_at":"2023-06-23T19:00:33.000000Z"},{"id":7,"name":"Sharo","pic":null,"created_at":"2023-06-23T18:58:57.000000Z","updated_at":"2023-06-23T18:58:57.000000Z"},{"id":6,"name":"Beef","pic":null,"created_at":"2023-06-23T18:53:42.000000Z","updated_at":"2023-06-23T18:53:42.000000Z"},{"id":5,"name":"Mashrom","pic":null,"created_at":"2023-06-23T18:49:16.000000Z","updated_at":"2023-06-23T18:49:16.000000Z"},{"id":4,"name":"Soup","pic":null,"created_at":"2023-06-23T18:49:12.000000Z","updated_at":"2023-06-23T18:49:12.000000Z"},{"id":3,"name":"Rice","pic":null,"created_at":"2023-06-23T18:49:08.000000Z","updated_at":"2023-06-23T18:49:08.000000Z"},{"id":2,"name":"Spicy","pic":null,"created_at":"2023-06-23T18:49:02.000000Z","updated_at":"2023-06-23T18:49:02.000000Z"},{"id":1,"name":"Chicken","pic":"public/categ/1687538607.cover.jpg","created_at":"2023-06-23T16:43:27.000000Z","updated_at":"2023-06-23T16:43:27.000000Z"}]

class CategoreyModel {
  CategoreyModel({
    required bool status,
    required List<Data> data,
  }) {
    _status = status;
    _data = data;
  }

  CategoreyModel.fromJson(dynamic json) {
    _status = json['status'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data!.add(Data.fromJson(v));
      });
    }
  }
  bool? _status;
  List<Data>? _data;
  CategoreyModel copyWith({
    bool? status,
    List<Data>? data,
  }) =>
      CategoreyModel(
        status: status ?? _status!,
        data: data ?? _data!,
      );
  bool get status => _status!;
  List<Data> get data => _data!;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data!.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 13
/// name : "chicken"
/// pic : "public/categ/1696452158.Untitled.png"
/// created_at : "2023-10-04T20:42:38.000000Z"
/// updated_at : "2023-10-04T20:42:38.000000Z"

class Data {
  Data({
    num? id,
    String? name,
    String? pic,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _name = name;
    _pic = pic;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _pic = json['pic'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _name;
  String? _pic;
  String? _createdAt;
  String? _updatedAt;
  Data copyWith({
    num? id,
    String? name,
    String? pic,
    String? createdAt,
    String? updatedAt,
  }) =>
      Data(
        id: id ?? _id,
        name: name ?? _name,
        pic: pic ?? _pic,
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
      );
  num get id => _id!;
  String get name => _name!;
  String get pic => _pic!;
  String get createdAt => _createdAt!;
  String get updatedAt => _updatedAt!;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['pic'] = _pic;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
