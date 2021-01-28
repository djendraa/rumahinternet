import 'package:http/http.dart' as http;
import 'package:rumahinternet/models/LoginModel.dart';
import 'dart:convert';

class ApiService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    String url = "http://192.168.200.187/api-crud/index.php/datadiri/get_all";
    
    final response = await http.post(url, body: requestModel.toJson());
    if(response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to Load Data');
    }
  }
}