import 'dart:convert';
import 'package:bard_api/bard_api.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Chatgpt extends GetxController {
  final String chatGPTAPIkey =
      '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';
  List res = [];
  Future<String> getResponse() async {
    var url = 'https://api.openai.com/v1/chat/completions';
    var headers = {'Authorization': 'Bearer $chatGPTAPIkey'};
    var body = {
      'prompt': 'hi?',
      'temperature': 0.7,
      'max_tokens': 100,
      'model': 'text-davinci-003',
      'top_p': 1
    };

    var response = await http.post(Uri.parse(url),
        headers: headers, body: jsonEncode(body));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      print(data['choices'][0]['text']);
      return data['choices'][0]['text'];
    } else {
      throw Exception('Error getting response from ChatGPT');
    }
  }
}

class BardController extends GetxController {
  getBard() async {
    final bard = ChatBot(
        sessionId:
            "ZAgIB-BPxJsh3sh91jj5qV3rDBn-CyPeMk08zWkQSSEvCnfgT7VdEKo-rsB3K1ml-NHfMg.");
    final result = await bard.ask('hi?');
    print(result);
  }
}
