/// data : [{"id":3,"image":"storage/images/tmpphpjx6tng_20210118225126.jpg","created_at":"2021-01-18T17:21:26.000000Z","updated_at":"2021-01-18T17:21:26.000000Z"},{"id":4,"image":"storage/images/tmpphpg5zx51_20210118225144.png","created_at":"2021-01-18T17:21:44.000000Z","updated_at":"2021-01-18T17:21:44.000000Z"},{"id":6,"image":"storage/images/tmpphpsuofu6_20210119120004.png","created_at":"2021-01-19T06:30:04.000000Z","updated_at":"2021-01-19T06:30:04.000000Z"}]
/// status : "true"

class Banner {
  List<Data> _data;
  String _status;

  List<Data> get data => _data;
  String get status => _status;

  Banner({
      List<Data> data, 
      String status}){
    _data = data;
    _status = status;
}

  Banner.fromJson(dynamic json) {
    if (json["data"] != null) {
      _data = [];
      json["data"].forEach((v) {
        _data.add(Data.fromJson(v));
      });
    }
    _status = json["status"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_data != null) {
      map["data"] = _data.map((v) => v.toJson()).toList();
    }
    map["status"] = _status;
    return map;
  }

}

/// id : 3
/// image : "storage/images/tmpphpjx6tng_20210118225126.jpg"
/// created_at : "2021-01-18T17:21:26.000000Z"
/// updated_at : "2021-01-18T17:21:26.000000Z"

class Data {
  int _id;
  String _image;
  String _createdAt;
  String _updatedAt;

  int get id => _id;
  String get image => _image;
  String get createdAt => _createdAt;
  String get updatedAt => _updatedAt;

  Data({
      int id, 
      String image, 
      String createdAt, 
      String updatedAt}){
    _id = id;
    _image = image;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json["id"];
    _image = json["image"];
    _createdAt = json["created_at"];
    _updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["image"] = _image;
    map["created_at"] = _createdAt;
    map["updated_at"] = _updatedAt;
    return map;
  }

}