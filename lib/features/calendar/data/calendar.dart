import 'dart:convert';
import 'package:http/http.dart' as http;

class Calendar {
  static Future get() async {
    String url = 'https://sg-wiki-api-static.hoyolab.com/hoyowiki/genshin/wapi/home/calendar';

    final headers = {
      "x-rpc-language": "ja-jp",
      "x-rpc-wiki_app": "genshin",
    };

    final response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    return json.decode(utf8.decode(response.body.runes.toList()));
  }
}
