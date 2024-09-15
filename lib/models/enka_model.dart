class EnkaResponse {
  final PlayerInfo playerInfo;
  final List<AvatarInfo> avatarInfoList;
  final int ttl;
  final String uid;

  EnkaResponse({
    required this.playerInfo,
    required this.avatarInfoList,
    required this.ttl,
    required this.uid,
  });

  factory EnkaResponse.fromJson(Map<String, dynamic> json) {
    print('ENKA LOG');
    return EnkaResponse(
      playerInfo: PlayerInfo.fromJson(json['playerInfo']),
      avatarInfoList: (json['avatarInfoList'] as List).map((i) => AvatarInfo.fromJson(i)).toList(),
      ttl: json['ttl'],
      uid: json['uid']
    );
  }
}

class PlayerInfo {
  final String nickname;
  final int level;
  final String signature;
  final int worldLevel;
  final int nameCardId;
  final int finishAchievementNum;
  final int towerFloorIndex;
  final int towerLevelIndex;
  final List<ShowAvatarInfo> showAvatarInfoList;
  final List<int> showNameCardIdList;
  final ProfilePicture profilePicture;

  PlayerInfo({
    required this.nickname,
    required this.level,
    required this.signature,
    required this.worldLevel,
    required this.nameCardId,
    required this.finishAchievementNum,
    required this.towerFloorIndex,
    required this.towerLevelIndex,
    required this.showAvatarInfoList,
    required this.showNameCardIdList,
    required this.profilePicture,
  });

  factory PlayerInfo.fromJson(Map<String, dynamic> json) {
    print('PLAYER INFO LOG');
    return PlayerInfo(
      nickname: json['nickname'],
      level: json['level'],
      signature: json['signature'],
      worldLevel: json['worldLevel'],
      nameCardId: json['nameCardId'],
      finishAchievementNum: json['finishAchievementNum'],
      towerFloorIndex: json['towerFloorIndex'],
      towerLevelIndex: json['towerLevelIndex'],
      showAvatarInfoList: (json['showAvatarInfoList'] as List)
          .map((i) => ShowAvatarInfo.fromJson(i))
          .toList(),
      showNameCardIdList: List<int>.from(json['showNameCardIdList']),
      profilePicture: ProfilePicture.fromJson(json['profilePicture']),
    );
  }
}

class ShowAvatarInfo {
  final int avatarId;
  final int? costumeId;
  final int level;

  ShowAvatarInfo({
    required this.avatarId,
    required this.level,
    this.costumeId
  });

  factory ShowAvatarInfo.fromJson(Map<String, dynamic> json) {
    print('SHOW AVATAR INFO LOG');
    return ShowAvatarInfo(
      avatarId: json['avatarId'],
      level: json['level'],
      costumeId: json['costumeId']
    );
  }
}

class AvatarInfo {
  final int avatarId;
  final Map<String, PropMap> propMap;
  final List<int>? talentIdList;
  final Map<String, double> fightPropMap;
  final int skillDepotId;
  final List<int> inherentProudSkillList;
  final Map<String, int> skillLevelMap;
  final Map<String, int>? proudSkillExtraLevelMap;
  final List<Equip> equipList;
  final FetterInfo fetterInfo;
  final int? costumeId;

  AvatarInfo({
    required this.avatarId,
    required this.propMap,
    this.talentIdList,
    required this.fightPropMap,
    required this.skillDepotId,
    required this.inherentProudSkillList,
    required this.skillLevelMap,
    this.proudSkillExtraLevelMap,
    required this.equipList,
    required this.fetterInfo,
    this.costumeId
  });

  factory AvatarInfo.fromJson(Map<String, dynamic> json) {
    print('AVATAR INFO LOG');
    return AvatarInfo(
      avatarId: json['avatarId'],
      propMap: Map.from(json['propMap'])
          .map((k, v) => MapEntry(k, PropMap.fromJson(v))),
      talentIdList: json['talentIdList'] != null ? List<int>.from(json['talentIdList']) : null,
      fightPropMap: Map.from(json['fightPropMap'])
          .map((k, v) {
            print('FIGHT PROP MAP ENTRY LOG');
            print('$k, $v');
            return MapEntry(k, v.toDouble());
          }),
      skillDepotId: json['skillDepotId'],
      inherentProudSkillList: List<int>.from(json['inherentProudSkillList']),
      skillLevelMap: Map.from(json['skillLevelMap'])
          .map((k, v) => MapEntry(k, v)),
      proudSkillExtraLevelMap: json['proudSkillExtraLevelMap'] != null ?
      Map.from(json['proudSkillExtraLevelMap'])
          .map((k, v) => MapEntry(k, v)) :
      null,
      equipList: (json['equipList'] as List)
          .map((i) => Equip.fromJson(i))
          .toList(),
      fetterInfo: FetterInfo.fromJson(json['fetterInfo']),
      costumeId: json['costumeId']
    );
  }
}

class PropMap {
  final int type;
  final String ival;
  final String? val;

  PropMap({
    required this.type,
    required this.ival,
    this.val,
  });

  factory PropMap.fromJson(Map<String, dynamic> json) {
    print('PROP MAP LOG');
    return PropMap(
      type: json['type'],
      ival: json['ival'],
      val: json['val'],
    );
  }
}

class FightPropMap {
  final double statValue;

  FightPropMap({required this.statValue});

  factory FightPropMap.fromJson(Map<String, dynamic> json) {
    
    print('FIGHT PROP MAP LOG');
    return FightPropMap(
      statValue: json['statValue'].toDouble(),
    );
  }
}

class Equip {
  final int itemId;
  final Reliquary? reliquary;
  final Flat flat;
  final Weapon? weapon;

  Equip({
    required this.itemId,
    this.reliquary,
    required this.flat,
    this.weapon,
  });

  factory Equip.fromJson(Map<String, dynamic> json) {
    print('EQUIP LOG');
    return Equip(
      itemId: json['itemId'],
      reliquary: json['reliquary'] != null ? Reliquary.fromJson(json['reliquary']) : null,
      flat: Flat.fromJson(json['flat']),
      weapon: json['weapon'] != null ? Weapon.fromJson(json['weapon']) : null,
    );
  }
}

class Reliquary {
  final int level;
  final int mainPropId;
  final List<int>? appendPropIdList;

  Reliquary({
    required this.level,
    required this.mainPropId,
    required this.appendPropIdList,
  });

  factory Reliquary.fromJson(Map<String, dynamic> json) {
    print('RELIQUARY LOG');
    return Reliquary(
      level: json['level'],
      mainPropId: json['mainPropId'],
      appendPropIdList: json['appendPropIdList'] != null ? List<int>.from(json['appendPropIdList']) : null,
    );
  }
}

class ReliquarySubstat {
  final String appendPropId;
  final num statValue;

  ReliquarySubstat({
    required this.appendPropId,
    required this.statValue,
  });

  factory ReliquarySubstat.fromJson(Map<String, dynamic> json) {
    print('RELIQUARY SUBSTAT LOG');
    return ReliquarySubstat(
      appendPropId: json['appendPropId'],
      statValue: json['statValue'],
    );
  }
}

class ReliquaryMainstat {
  final String mainPropId;
  final num statValue;

  ReliquaryMainstat({
    required this.mainPropId,
    required this.statValue,
  });

  factory ReliquaryMainstat.fromJson(Map<String, dynamic> json) {
    print('RELIQUARY MAINSTAT LOG');
    return ReliquaryMainstat(
      mainPropId: json['mainPropId'],
      statValue: json['statValue'],
    );
  }
}

class Flat {
  final String nameTextMapHash;
  final int rankLevel;
  final String itemType;
  final String icon;
  final String? equipType;
  final String? setNameTextMapHash;
  final List<ReliquarySubstat>? reliquarySubstats;
  final ReliquaryMainstat? reliquaryMainstat;
  final List<WeaponStat>? weaponStat;

  Flat({
    required this.nameTextMapHash,
    required this.rankLevel,
    required this.itemType,
    required this.icon,
    this.equipType,
    this.setNameTextMapHash,
    this.reliquarySubstats,
    this.reliquaryMainstat,
    this.weaponStat,
  });

  factory Flat.fromJson(Map<String, dynamic> json) {
    print('FLAT LOG');
    return Flat(
      nameTextMapHash: json['nameTextMapHash'],
      rankLevel: json['rankLevel'],
      itemType: json['itemType'],
      icon: json['icon'],
      equipType: json['equipType'],
      setNameTextMapHash: json['setNameTextMapHash'],
      reliquarySubstats: json['reliquarySubstats'] != null
        ? (json['reliquarySubstats'] as List)
          .map((i) => ReliquarySubstat.fromJson(i))
          .toList()
        : null,
      reliquaryMainstat: json['reliquaryMainstat'] != null ? ReliquaryMainstat.fromJson(json['reliquaryMainstat']) : null,
      weaponStat: json['weaponStats'] != null
        ? (json['weaponStats'] as List)
          .map((i) => WeaponStat.fromJson(i))
          .toList()
        : null,
    );
  }
}

class WeaponStat {
  final String appendPropId;
  final double statValue;

  WeaponStat({
    required this.appendPropId,
    required this.statValue,
  });

  factory WeaponStat.fromJson(Map<String, dynamic> json) {
    print('WEAPON STAT LOG');
    return WeaponStat(
      appendPropId: json['appendPropId'],
      statValue: json['statValue'].toDouble(),
    );
  }
}

class EquipSubstat {
  final String appendPropId;
  final double statValue;

  EquipSubstat({
    required this.appendPropId,
    required this.statValue,
  });

  factory EquipSubstat.fromJson(Map<String, dynamic> json) {
    print('EQUIP SUBSTAT LOG');
    return EquipSubstat(
      appendPropId: json['appendPropId'],
      statValue: json['statValue'].toDouble(),
    );
  }
}

class EquipMainstat {
  final String mainPropId;
  final double statValue;

  EquipMainstat({
    required this.mainPropId,
    required this.statValue,
  });

  factory EquipMainstat.fromJson(Map<String, dynamic> json) {
    print('EQUIP MAIN STAT LOG');
    
    return EquipMainstat(
      mainPropId: json['mainPropId'],
      statValue: json['statValue'].toDouble(),
    );
  }
}

class Weapon {
  final int level;
  final int? promoteLevel;
  final Map<String, int>? affixMap;

  Weapon({
    required this.level,
    this.promoteLevel,
    this.affixMap,
  });

  factory Weapon.fromJson(Map<String, dynamic> json) {
    print('WEAPON LOG');
    return Weapon(
      level: json['level'],
      promoteLevel: json['promoteLevel'],
      affixMap: json['affixMap'] != null ? Map.from(json['affixMap']).map((k, v) => MapEntry(k, v)) : null,
    );
  }
}

class FetterInfo {
  final int expLevel;

  FetterInfo({
    required this.expLevel,
  });

  factory FetterInfo.fromJson(Map<String, dynamic> json) {
    print('FETTER INFO LOG');
    return FetterInfo(
      expLevel: json['expLevel'],
    );
  }
}

class ProfilePicture {
  final int? id;
  final int? avatarId;
  final int? costumeId;

  ProfilePicture({
    this.id,
    this.avatarId,
    this.costumeId
  });

  factory ProfilePicture.fromJson(Map<String, dynamic> json) {
    print('PFP LOG');
    return ProfilePicture(
      id: json['id'],
      avatarId: json['avatarId'],
      costumeId: json['costumeId']
    );
  }
}
