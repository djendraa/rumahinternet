import 'dart:convert';

import 'package:rumahinternet/models/ProfileModel.dart';
import 'package:rumahinternet/utils/apiclient.dart';

class ProfileProvider {
  Future<List<Profile>> ambilList() async {
    String endPoint = "c_profile/get_all";
    var response = await client.getData(endPoint: endPoint);
    var data = jsonDecode(response.body);
    
    return profileFromMap(jsonEncode(data['data']));
  }

  Future<List<Profile>> getById(String id) async {
    String endPoint = "c_profile/get_by_id";
    Map<String, dynamic> body = {
      "id_profile":id
    };
    var response = await client.postData(endPoint: endPoint, body: body);
    var data = jsonDecode(response.body);
    print(data);
    
    return profileFromMap(jsonEncode(data['data']));
  }
}

// 