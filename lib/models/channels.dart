import 'dart:convert';
import 'package:http/http.dart' as http;

class Channel {
  final String id;
  final String title;
  final String image;
  final DateTime date;
  final double cost;

  Channel({
    required this.id,
    required this.title,
    required this.image,
    required this.date,
    required this.cost,
  });

  factory Channel.fromJson(Map<String, dynamic> json) {
    return Channel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      date: DateTime.parse(json['date']),
      cost: json['cost'].toDouble(),
    );
  }

  static Future<List<Channel>> getChannels() async {
    final response =
        await http.get(Uri.parse('https://example.com/api/channels'));
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
    return parsed.map<Channel>((json) => Channel.fromJson(json)).toList();
  }
}
