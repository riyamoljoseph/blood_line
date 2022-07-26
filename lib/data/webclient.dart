import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:blood_line/helper/sharedpreferences.dart';

class WebClient {

//static const ip = "http://192.168.52.245:5555";
  //static const ip = "http://192.168.49.29:5555";
//  static const ip="https://periyarproject.herokuapp.com";

//static const ip = "http://192.168.48.145:5555";
  static const ip = "http://192.168.55.214:5000";
  //static const ip="https://periyarproject.herokuapp.com";


  static Future<dynamic> post(url, data) async {
    var token = await TempStorage.getToken();
    Map? sendData = {};
    if (data?.isNotEmpty ?? false) {
      sendData.addAll(data);
    }
    print(sendData);

    var body = json.encode(sendData);

    var response = await http.post(
      Uri.parse(ip + url),
      headers: {"Content-Type": "application/json", "token": token ?? ""},
      body: body,
    );
    print(response.body);
    print("token status - " + token.toString() + " ||");
    if (response.statusCode == 200) {
      print(response.body);
      print("sss");

      return jsonDecode(response.body);
    } else {
      print("ssshhh");
      var error = {
        "status": false,
        "msg": "Invalid Request",
      };
      return error;

    }
  }

  static Future<dynamic> get(url) async {
    var token = await TempStorage.getToken();
    var response = await http.get(Uri.parse(ip + url),
        headers: {"Content-Type": "application/json", "token": token ?? ""});

    print("token - " + token.toString() + " ||");
    if (response.statusCode == 200) {
      print(response.body);
      return jsonDecode(response.body);
    } else {
      print( response.statusCode.toString()+"msfgh");
      var error = {
        "status": false,
        "msg": "Invalid Request",
      };
      return error;
    }
  }
}