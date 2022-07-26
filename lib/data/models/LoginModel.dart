class LoginModel {
  LoginModel({
      this.status, 
      this.msg, 
      this.data, 
      this.token,});

  LoginModel.fromJson(dynamic json) {
    status = json['status'];
    msg = json['msg'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    token = json['token'];
  }
  bool? status;
  String? msg;
  Data? data;
  String? token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['msg'] = msg;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['token'] = token;
    return map;
  }

}

class Data {
  Data({
      this.id, 
      this.name, 
      this.password, 
      this.gender, 
      this.city, 
      this.phonenumber, 
      this.role, 
      this.status, 
      this.v,});

  Data.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    password = json['password'];
    gender = json['gender'];
    city = json['city'];
    phonenumber = json['phonenumber'];
    role = json['role'];
    status = json['status'];
    v = json['__v'];
  }
  String? id;
  String? name;
  String? password;
  String? gender;
  String? city;
  int? phonenumber;
  String? role;
  String? status;
  int? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    map['password'] = password;
    map['gender'] = gender;
    map['city'] = city;
    map['phonenumber'] = phonenumber;
    map['role'] = role;
    map['status'] = status;
    map['__v'] = v;
    return map;
  }

}