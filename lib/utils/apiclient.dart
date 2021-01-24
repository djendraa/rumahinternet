import 'package:http/http.dart' show Client;
import 'dart:convert';

const String baseUrl = "http://192.168.43.249/api-crud/index.php/";

class ApiClient {
  Client http = new Client();
  Future<dynamic> getData({String endPoint}) {
    print(baseUrl + endPoint);
    return http.get(baseUrl + endPoint, headers: {
      "Content-type": "application/json",
      "Accept": "application/json"
    });
  }
  
  Future<dynamic> postData({String endPoint, Map<String, dynamic> body}) {
    print(body);
    print(baseUrl + endPoint);
    return http.post(baseUrl + endPoint, body: body, headers: {
      "Content-type": "application/x-www-form-urlencoded",
      "Accept": "application/json"
    },
    );
    
  }
}

final client = new ApiClient();