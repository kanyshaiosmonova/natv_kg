import 'dart:convert';
import 'package:http/http.dart' as http;

class Channel {
  final String channelName;
  final List<Map<String, dynamic>> discounts;
  final int id;
  final String logo;
  final double pricePerLetter;

  Channel({
    required this.channelName,
    required this.discounts,
    required this.id,
    required this.logo,
    required this.pricePerLetter,
  });

  factory Channel.fromJson(Map<String, dynamic> json) {
    // Проверяем, есть ли логотип и название в JSON
    final hasLogo = json['logo'] != null && json['logo'].isNotEmpty;
    final hasName =
        json['channelName'] != null && json['channelName'].isNotEmpty;

    // Если есть логотип и название, создаем объект Channel с ними
    if (hasLogo && hasName) {
      return Channel(
        channelName: json['channelName'],
        discounts: List<Map<String, dynamic>>.from(json['discounts']),
        id: json['id'],
        logo: json['logo'],
        pricePerLetter: json['pricePerLetter'] != null
            ? json['pricePerLetter'] as double
            : 0.0,
      );
    }

    // Если логотип или название отсутствуют, создаем объект Channel без них
    return Channel(
      channelName: '',
      discounts: List<Map<String, dynamic>>.from(json['discounts']),
      id: json['id'],
      logo: '',
      pricePerLetter: json['pricePerLetter'] != null
          ? json['pricePerLetter'] as double
          : 0.0,
    );
  }

  static Future<List<Channel>> getChannels() async {
    final response = await http.get(Uri.parse('https://app1.megacom.kg:9090/test_task/api/v1/channel/list'));
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

    List<Channel> channels = [];

    for (var json in parsed) {
      if (json['channelName'] != null && json['channelName'].isNotEmpty &&
          json['logo'] != null && json['logo'].isNotEmpty) {
        channels.add(Channel.fromJson(json));
      }
    }

    return channels;
  }
}
