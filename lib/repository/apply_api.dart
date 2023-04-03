import 'dart:convert';
import 'package:http/http.dart' as http;

class ApplyService {
  static const String baseUrl = 'https://app1.megacom.kg:9090/api';

  static Future<dynamic> getData(String endpoint) async {
    var response = await http.get(Uri.parse('$baseUrl/$endpoint'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }

  static Future<dynamic> postData(String endpoint, dynamic data) async {
    var response = await http.post(Uri.parse('$baseUrl/$endpoint'),
        body: jsonEncode(data), headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to post data: ${response.statusCode}');
    }
  }
}
