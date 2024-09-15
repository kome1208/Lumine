import 'dart:convert';

import 'package:http/http.dart' as http;

class HoYoWiki {
  static Future getHoverData(pageId) async {
    String url = 'https://sg-wiki-api-static.hoyolab.com/hoyowiki/genshin/wapi/home/hover?entry_page_id=$pageId';

    final headers = {
      'Accept': 'application/json, text/plain, */*',
      'Accept-Language': 'ja,en-US;q=0.7,en;q=0.3',
      'x-rpc-language': 'ja-jp',
      'x-rpc-wiki_app': 'genshin',
    };

    http.Response response = await http.get(Uri.parse(url), headers: headers);
    final body = json.decode(utf8.decode(response.body.runes.toList()));
    
    return body;
  }
}