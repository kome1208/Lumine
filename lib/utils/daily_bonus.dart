import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lumine/features/daily_bonus/model/daily_bonus_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DailyBonus {
  static Future<CheckInTaskList> getTaskList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final String cookie = prefs.getString('cookie') ?? '';

    String url = 'https://sg-hk4e-api.hoyolab.com/event/sol/task/list?act_id=e202102251931481&lang=ja-jp';

    Map<String, String> headers = {
      "Cookie": cookie,
    };

    final response = await http.get(
      Uri.parse(url),
      headers: headers
    );

    final data = json.decode(utf8.decode(response.body.runes.toList()));

    if (data['retcode'] == 0) {
      return CheckInTaskList.fromJson(data['data']);
    } else {
      throw Exception(data['msg']);
    }
  }

  static Future<bool> completeTask(int id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final String cookie = prefs.getString('cookie') ?? '';

    String url = 'https://log-upload-os.hoyolab.com/event/sol/task/complete?lang=ja-jp';

    Map<String, String> headers = {
      'Host': 'sg-hk4e-api.hoyolab.com',
      'User-Agent': 'Mozilla/5.0 (Linux; Android 13; ASUS_I006D Build/TKQ1.220807.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/126.0.6478.186 Mobile Safari/537.36 miHoYoBBSOversea/2.58.0',
      'Accept': 'application/json, text/plain, */*',
      'Accept-Encoding': 'gzip, deflate, br, zstd',
      'sec-ch-ua': '"Not/A)Brand";v="8", "Chromium";v="126", "Android WebView";v="126"',
      'content-type': 'application/json;charset=UTF-8',
      'sec-ch-ua-mobile': '?1',
      'sec-ch-ua-platform': '"Android"',
      'origin': 'https://act.hoyolab.com',
      'x-requested-with': 'com.mihoyo.hoyolab',
      'sec-fetch-site': 'same-site',
      'sec-fetch-mode': 'cors',
      'sec-fetch-dest': 'empty',
      'referer': 'https://act.hoyolab.com/',
      'accept-language': 'ja-JP,ja;q=0.9,en-US;q=0.8,en;q=0.7',
      'priority': 'u=1, i',
      "Cookie": cookie,
    };

    final body = '{"id":$id,"lang":"ja-jp","act_id":"e202102251931481"}';
    final response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body
    );
    
    final data = json.decode(utf8.decode(response.body.runes.toList()));

    return data['retcode'] == 0 ? true : false;
  }

  static Future<bool> taskAward(int id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final String cookie = prefs.getString('cookie') ?? '';

    String url = 'https://sg-hk4e-api.hoyolab.com/event/sol/task/award?lang=ja-jp';

    Map<String, String> headers = {
      "Cookie": cookie,
    };

    final response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: '{"act_id":"e202102251931481","lang":"ja-jp","id":$id}'
    );

    final data = json.decode(utf8.decode(response.body.runes.toList()));

    return data['retcode'] == 0 ? true : false;
  }
}
