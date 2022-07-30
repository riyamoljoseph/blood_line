class RegistrationModel {
  RegistrationModel({
      this.status, 
      this.msg, 
      this.user,});

  RegistrationModel.fromJson(dynamic json) {
    status = json['status'];
    msg = json['msg'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  bool? status;
  String? msg;
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['msg'] = msg;
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

class User {
  User({
      this.name, 
      this.password, 
      this.gender, 
      this.city, 
      this.phonenumber, 
      this.role, 
      this.status, 
      this.id, 
      this.v,});

  User.fromJson(dynamic json) {
    name = json['name'];
    password = json['password'];
    gender = json['gender'];
    city = json['city'];
    phonenumber = json['phonenumber'];
    role = json['role'];
    status = json['status'];
    id = json['_id'];
    v = json['__v'];
  }
  String? name;
  String? password;
  String? gender;
  String? city;
  int? phonenumber;
  String? role;
  String? status;
  String? id;
  int? v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['password'] = password;
    map['gender'] = gender;
    map['city'] = city;
    map['phonenumber'] = phonenumber;
    map['role'] = role;
    map['status'] = status;
    map['_id'] = id;
    map['__v'] = v;
    return map;
  }

}