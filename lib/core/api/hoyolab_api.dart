import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:lumine/core/api/model/brief_model.dart';
import 'package:lumine/core/api/model/char_master_model.dart';
import 'package:lumine/core/api/model/checkin_makeup_task_list_model.dart';
import 'package:lumine/core/api/model/daily_award_list_model.dart';
import 'package:lumine/core/api/model/daily_note_model.dart';
import 'package:lumine/core/api/model/daily_resign_info_model.dart';
import 'package:lumine/core/api/model/daily_sign_info_model.dart';
import 'package:lumine/core/api/model/exchange_code.dart';
import 'package:lumine/core/api/model/game_record_card_model.dart';
import 'package:lumine/core/api/model/game_record_character_detail_model.dart';
import 'package:lumine/core/api/model/game_record_character_list_model.dart';
import 'package:lumine/core/api/model/game_record_model.dart';
import 'package:lumine/core/api/model/hoyolab_api_error.dart';
import 'package:lumine/core/api/model/month_info_model.dart';
import 'package:lumine/core/api/model/role_combat_model.dart';
import 'package:lumine/core/api/model/spiral_abyss_model.dart';
import 'package:lumine/core/api/model/unread_count_model.dart';
import 'package:lumine/core/api/model/user_notifications_model.dart';
import 'package:lumine/core/api/model/sync_avatar_model.dart';

class HoYoLAB {
  final String ltoken;
  final String ltmid;
  final String ltuid;
  final String cookieToken;
  final String? uid;
  final String? region;

  HoYoLAB({
    required this.ltoken,
    required this.ltmid,
    required this.ltuid,
    required this.cookieToken,
    this.uid,
    this.region
  });

  static const _bbsAPIUri = "https://bbs-api-os.hoyolab.com";
  static const _sgHk4eAPIUri = "https://sg-hk4e-api.hoyolab.com";
  static const _sgPublicAPIUri = "https://sg-public-api.hoyolab.com";
  static const _logUploadAPIUri = "https://log-upload-os.hoyolab.com";
  static const _sgWikiAPIUri = "https://sg-wiki-api-static.hoyolab.com";

  Map<String, String> getHeaders() {
    final List<String> cookie = [
      "ltoken_v2=$ltoken",
      "ltmid_v2=$ltmid",
      "ltuid_v2=$ltuid",
      "cookie_token_v2=$cookieToken",
      "account_mid_v2=$ltmid",
      "account_id_v2=$ltuid"
    ];

    return {
      "Cookie": cookie.join('; '),
      "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36",
      "x-requested-with": "com.mihoyo.hoyolab",
      "x-rpc-language": "ja-jp",
      "x-rpc-app_version": "2.58.0",
      "x-rpc-platform": "4",
      "x-rpc-client_type": "4"
    };
  }

  Future<DailyNote> getDailyNote() async {
    final uri = Uri.parse(_bbsAPIUri)
    .replace(
      path: '/game_record/app/genshin/api/dailyNote',
      queryParameters: {
        "role_id": uid,
        "server": region
      }
    );

    final response = await http.get(
      uri,
      headers: getHeaders()
    );


    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return DailyNote.fromJson(data['data']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<String> changeDataSwitch(int switchId, bool isPublic) async {
    final uri = Uri.parse(_bbsAPIUri)
    .replace(
      path: '/game_record/card/wapi/changeDataSwitch',
    );

    final Map<String, String> headers = {
      ...getHeaders(),
      "x-rpc-page_info": "{\"pageName\":\"PrivacySettingsPage\",\"pageType\":\"Privacy\",\"pageId\":\"\",\"pageArrangement\":\"\",\"gameId\":\"\"}",
      "x-rpc-source_info": "{\"sourceName\":\"UserSettingPage\",\"sourceType\":\"RewardsInfo\",\"sourceId\":\"\",\"sourceArrangement\":\"\",\"sourceGameId\":\"\"}",
      "x-rpc-page_name": "PrivacySettingsPage",
    };

    final Map<String, dynamic> body = {
      "game_id": "2",
      "is_public": isPublic,
      "switch_id": "$switchId"
    };

    final response = await http.post(
      uri,
      headers: headers,
      body: json.encode(body)
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return data['message'];
      } else {
        throw HoYoLABAPIError(data['retcode'], data['msg'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<GameRecord> getGameRecord({int? avatarListType = 0}) async {
    final uri = Uri.parse(_bbsAPIUri)
    .replace(
      path: '/game_record/genshin/api/index',
      queryParameters: {
        "avatar_list_type": '$avatarListType',
        "role_id": uid,
        "server": region
      }
    );

    final response = await http.get(
      uri,
      headers: getHeaders()
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return GameRecord.fromJson(data['data']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<GameRecordCard> getGameRecordCard() async {
    final uri = Uri.parse(_bbsAPIUri)
    .replace(
      path: '/game_record/card/wapi/getGameRecordCard',
      queryParameters: {
        "uid": ltuid
      }
    );

    final response = await http.get(
      uri,
      headers: getHeaders()
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return GameRecordCard.fromJson(data['data']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<GameRecordCharacterDetail> getCharacterDetail(List<int> characterIds) async {
    final uri = Uri.parse(_bbsAPIUri)
    .replace(
      path: '/game_record/genshin/api/character/detail',
    );

    final Map<String, dynamic> body = {
      "role_id": uid,
      "server": region,
      "character_ids": characterIds
    };

    final response = await http.post(
      uri,
      headers: getHeaders(),
      body: json.encode(body)
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return GameRecordCharacterDetail.fromJson(data['data']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<GameRecordCharacterList> getCharacterList({
    int? sortType = 1,
    List<String>? elements,
    List<int>? weaponType
  }) async {
    final uri = Uri.parse(_bbsAPIUri)
    .replace(
      path: '/game_record/genshin/api/character/list',
    );

    final Map<String, dynamic> body = {
      "role_id": uid,
      "server": region,
      "sort_type": sortType,
      "elements": elements ?? [],
      "weapon_type": weaponType ?? []
    };

    final response = await http.post(
      uri,
      headers: getHeaders(),
      body: json.encode(body)
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return GameRecordCharacterList.fromJson(data['data']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<SpiralAbyss> getSpiralAbyss({int? scheduleType = 1}) async {
    final uri = Uri.parse(_bbsAPIUri)
    .replace(
      path: '/game_record/genshin/api/spiralAbyss',
      queryParameters: {
        "role_id": uid,
        "server": region,
        "schedule_type": '$scheduleType'
      }
    );

    final response = await http.get(
      uri,
      headers: getHeaders(),
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return SpiralAbyss.fromJson(data['data']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<RoleCombat> getRoleCombat({bool? needDetail = true, int? active = 1}) async {
    final uri = Uri.parse(_bbsAPIUri)
    .replace(
      path: '/game_record/genshin/api/role_combat',
      queryParameters: {
        "role_id": '$uid',
        "server": region,
        "active": '$active',
        "need_detail": '$needDetail'
      }
    );

    final response = await http.get(
      uri,
      headers: getHeaders(),
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return RoleCombat.fromJson(data['data']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<CharMaster> getCharMaster() async {
    final uri = Uri.parse(_bbsAPIUri)
    .replace(
      path: '/game_record/genshin/api/char_master',
      queryParameters: {
        "role_id": uid,
        "server": region
      }
    );

    final response = await http.get(
      uri,
      headers: getHeaders(),
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return CharMaster.fromJson(data['data']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<UnreadCount> getUnreadCount() async {
    final uri = Uri.parse(_bbsAPIUri)
    .replace(
      path: '/community/notification/wapi/getUserUnreadCount'
    );

    final Map<String, String> headers = {
      ...getHeaders(),
      "x-rpc-page_info": "{\"pageName\":\"\",\"pageType\":\"\",\"pageId\":\"\",\"pageArrangement\":\"\",\"gameId\":\"\"}",
      "x-rpc-source_info": "{\"sourceName\":\"\",\"sourceType\":\"\",\"sourceId\":\"\",\"sourceArrangement\":\"\",\"sourceGameId\":\"\"}",
			"x-rpc-show-translated": "false",
			"x-rpc-sys_version": "Windows NT 10.0",
			"x-rpc-timezone": "Asia/Tokyo",
    };

    final response = await http.get(
      uri,
      headers: headers,
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return UnreadCount.fromJson(data['data']['count']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<ExchangeGroup?> getExchangeCodes() async {
    final uri = Uri.parse(_bbsAPIUri)
    .replace(
      path: '/community/painter/wapi/circle/channel/guide/material',
      queryParameters: {
        "game_id": 2
      }
    );

    final response = await http.get(
      uri,
      headers: getHeaders(),
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        final exCodeModule = data['data']['modules'].firstWhere((x) => x['module_type'] == 7, orElse: () => null);

        final exchangeModule = ExchangeGroup.fromJson(exCodeModule['exchange_group']);

        if (exCodeModule != null) return exchangeModule;
        return null;
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<String> clearUserUnread({String? category = 'system'}) async {
    final uri = Uri.parse(_bbsAPIUri)
    .replace(
      path: '/community/notification/wapi/clearUserUnread',
    );

    final Map<String, String> headers = {
      ...getHeaders(),
      "x-rpc-page_info": "{\"pageName\":\"HomePage\",\"pageType\":\"\",\"pageId\":\"\",\"pageArrangement\":\"\",\"gameId\":\"\"}",
      "x-rpc-source_info": "{\"sourceName\":\"\",\"sourceType\":\"\",\"sourceId\":\"\",\"sourceArrangement\":\"\",\"sourceGameId\":\"\"}",
      "x-rpc-page_name": "HomePage",
      "x-rpc-show-translated": "false",
      "x-rpc-sys_version": "Windows NT 10.0",
      "x-rpc-timezone": "Asia/Tokyo",
    };

    final Map<String, dynamic> body = {
      "category": category,
    };

    final response = await http.post(
      uri,
      headers: headers,
      body: json.encode(body)
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return data['message'];
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<UserBrief> getUserBrief() async {
    final uri = Uri.parse(_bbsAPIUri)
    .replace(
      path: '/community/notification/wapi/user/brief',
    );

    final Map<String, String> headers = {
      ...getHeaders(),
      "x-rpc-page_info": '{"pageName":"HomeGamePage","pageType":"30","pageId":"","pageArrangement":"Hot","gameId":"2"}',
			"x-rpc-source_info": "{\"sourceName\":\"\",\"sourceType\":\"\",\"sourceId\":\"\",\"sourceArrangement\":\"\",\"sourceGameId\":\"\"}",
			"x-rpc-page_name": "HomeGamePage",
      "x-rpc-show-translated": "false",
      "x-rpc-sys_version": "Windows NT 10.0",
      "x-rpc-timezone": "Asia/Tokyo",
    };

    final response = await http.get(
      uri,
      headers: headers,
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return UserBrief.fromJson(data['data']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<UserNotifications> getUserNotifications(String category, {String? lastId = '0'}) async {
    final uri = Uri.parse(_bbsAPIUri)
    .replace(
      path: '/community/notification/wapi/getUserNotifications',
      queryParameters: {
        "category": category,
        "last_id": lastId
      }
    );

    final Map<String, String> headers = {
      ...getHeaders(),
			"x-rpc-page_info": '{"pageName":"MessageList","pageType":"SystemNotice","pageId":"","pageArrangement":"Hot","gameId":"2"}',
			"x-rpc-source_info": "{\"sourceName\":\"\",\"sourceType\":\"\",\"sourceId\":\"\",\"sourceArrangement\":\"\",\"sourceGameId\":\"\"}",
			"x-rpc-page_name": "MessageList",
      "x-rpc-show-translated": "false",
      "x-rpc-sys_version": "Windows NT 10.0",
      "x-rpc-timezone": "Asia/Tokyo",
    };

    final response = await http.get(
      uri,
      headers: headers,
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return UserNotifications.fromJson(data['data']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<Map<String, dynamic>> exchangeCdKey(String cdKey) async {
    final uri = Uri.parse(_sgHk4eAPIUri)
    .replace(
      path: '/common/apicdkey/api/webExchangeCdkeyHyl',
      queryParameters: {
        "uid": uid,
        "region": region,
        "lang": "ja",
        "cdkey": cdKey,
        "game_biz": "hk4e_global",
        "sLangKey": "en-us",
      }
    );

    final response = await http.get(
      uri,
      headers: getHeaders(),
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      return data;
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<DailyAwardList> getAwardList() async {
    final uri = Uri.parse(_sgHk4eAPIUri)
    .replace(
      path: '/event/sol/home',
      queryParameters: {
        "lang": "ja-jp",
        "act_id": "e202102251931481"
      }
    );

    final response = await http.get(
      uri,
      headers: getHeaders(),
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return DailyAwardList.fromJson(data['data']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<DailySignInfo> getSignInfo() async {
    final uri = Uri.parse(_sgHk4eAPIUri)
    .replace(
      path: '/event/sol/info',
      queryParameters: {
        "lang": "ja-jp",
        "act_id": "e202102251931481"
      }
    );

    final response = await http.get(
      uri,
      headers: getHeaders(),
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return DailySignInfo.fromJson(data['data']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<DailyResignInfo> getResignInfo() async {
    final uri = Uri.parse(_sgHk4eAPIUri)
    .replace(
      path: '/event/sol/resign_info',
      queryParameters: {
        "lang": "ja-jp",
        "act_id": "e202102251931481"
      }
    );

    final response = await http.get(
      uri,
      headers: getHeaders(),
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return DailyResignInfo.fromJson(data['data']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<String> dailyCheckIn({bool? resign = false}) async {
    final uri = Uri.parse(_sgHk4eAPIUri)
    .replace(
      path: resign == true ? '/event/sol/resign' : '/event/sol/sign',
      queryParameters: {
        "lang": "ja-jp",
      }
    );

    final Map<String, dynamic> body = {
      "act_id": "e202102251931481"
    };

    final response = await http.post(
      uri,
      headers: getHeaders(),
      body: json.encode(body)
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return data['message'];
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<MonthInfo> getMonthInfo(int month) async {
    final uri = Uri.parse(_sgHk4eAPIUri)
    .replace(
      path: '/event/ysledgeros/month_info',
      queryParameters: {
        "lang": "ja-jp",
        "month": '$month',
        "region": region,
        "uid": uid
      }
    );

    final response = await http.get(
      uri,
      headers: getHeaders(),
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return MonthInfo.fromJson(data['data']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<SyncAvatarList> getSyncAvatarList ({int? element, int? weapon, bool? isAll}) async {
    final uri = Uri.parse(_sgPublicAPIUri).replace(
      path: 'event/calculateos/sync/avatar/list'
    );

    final Map<String, String> headers = {
      "x-rpc-page": "__#/character",
      ...getHeaders()
    };

    final Map<String, dynamic> body = {
      if (isAll != true) ...{
        "uid": uid,
        "region": region,
      },
      "element_attr_ids": [if (element != null) element],
      if (isAll == true) "is_all": isAll,
      "weapon_cat_ids": [if (weapon != null) weapon],
      "page": 1,
      "size": 200,
      "lang": "ja-jp"
    };

    final response = await http.post(
      uri,
      headers: headers,
      body: json.encode(body)
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return SyncAvatarList.fromJson(data['data']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<CheckinMakeupTaskList> getTaskList() async {
    final uri = Uri.parse(_sgHk4eAPIUri)
    .replace(
      path: '/event/sol/task/list',
      queryParameters: {
        "act_id": 'e202102251931481',
        "lang": "ja-jp",
      }
    );

    final response = await http.get(
      uri,
      headers: getHeaders(),
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return CheckinMakeupTaskList.fromJson(data['data']);
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<bool> completeTask(int id) async {
    final uri = Uri.parse(_sgHk4eAPIUri).replace(
      path: 'event/sol/task/complete',
      queryParameters: {
        "lang": "ja-jp"
      }
    );

    final Map<String, dynamic> body = {
      "id": "$id",
      "lang": "ja-jp",
      "act_id": "e202102251931481"
    };

    final response = await http.post(
      uri,
      headers: getHeaders(),
      body: json.encode(body)
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return true;
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }

  Future<bool> taskAward(int id) async {
    final uri = Uri.parse(_sgHk4eAPIUri).replace(
      path: 'event/sol/task/award',
      queryParameters: {
        "lang": "ja-jp"
      }
    );

    final Map<String, dynamic> body = {
      "id": "$id",
      "lang": "ja-jp",
      "act_id": "e202102251931481"
    };

    final response = await http.post(
      uri,
      headers: getHeaders(),
      body: json.encode(body)
    );

    if (response.statusCode == 200) {
      final data = json.decode(utf8.decode(response.body.runes.toList()));
      if (data['retcode'] == 0) {
        return true;
      } else {
        throw HoYoLABAPIError(data['retcode'], data['message'] ?? '不明なエラー');
      }
    } else {
      throw HoYoLABAPIError(response.statusCode, 'HTTPエラー');
    }
  }
}