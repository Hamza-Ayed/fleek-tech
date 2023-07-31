import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../constants/credintial.dart';

class CRUD {
  Future<dynamic> get({
    required String link,
    Map<String, dynamic>? payload,
  }) async {
    var url = Uri.parse(link);
    var response = await http.get(
      url,
      headers: {
        'Authorization':
            'Basic ${base64Encode(utf8.encode(AppCredintials.basicAuthCredentials))}',
      },
    );
    List data = jsonDecode(response.body)['data'];
    print(data);
    return data;
  }

  Future<dynamic> post({
    required String link,
    Map<String, dynamic>? payload,
  }) async {
    var url = Uri.parse(
      link,
    );
    var response = await http.post(
      url,
      body: payload,
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
        'Authorization':
            'Basic ${base64Encode(utf8.encode(AppCredintials.basicAuthCredentials))}',
      },
    );
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      if (jsonData['status'] == 'success') {
        Get.snackbar(
          jsonData['status'],
          jsonData['message'],
        );

        return response.body;
      } else if (jsonData['status'] == 'success1') {
        print(jsonData['data']);
        return jsonData['data'];
      }
    }
    return (response.body);
  }

  Future<dynamic> update({
    required String endpoint,
    required Map<String, dynamic> data,
    required String id,
  }) async {
    var url = Uri.parse('$endpoint/$id');
    var response = await http.put(
      url,
      body: json.encode(data),
      headers: {
        'Authorization':
            'Basic ${base64Encode(utf8.encode(AppCredintials.basicAuthCredentials))}',
      },
    );
    return json.decode(response.body);
  }

  Future<dynamic> delete({
    required String endpoint,
    required String id,
  }) async {
    var url = Uri.parse('$endpoint/$id');
    var response = await http.delete(
      url,
      headers: {
        'Authorization':
            'Basic ${base64Encode(utf8.encode(AppCredintials.basicAuthCredentials))}',
      },
    );
    return json.decode(response.body);
  }
}
