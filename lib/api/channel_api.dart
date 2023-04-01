import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:natv_kg/models/channels.dart';

class ChannelApi {
  static Future<List<Channel>> getChannels() async {
    final response =
        await http.get(Uri.parse('https://example.com/api/channels'));
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
    return parsed.map<Channel>((json) => Channel.fromJson(json)).toList();
  }
}
