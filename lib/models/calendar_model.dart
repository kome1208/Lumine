class CalendarModel {
  final List<int> dropDay;
  final int breakType;
  final String obtainMethod;
  final List characterAbstracts;
  final List materialAbstracts;

  CalendarModel({
    required this.dropDay,
    required this.breakType,
    required this.obtainMethod,
    required this.characterAbstracts,
    required this.materialAbstracts,
  });

  factory CalendarModel.fromJson(Map<String, dynamic> json) {
    return CalendarModel(
      dropDay: List<int>.from(json['drop_day']),
      breakType: json['break_type'],
      obtainMethod: json['obtain_method'],
      characterAbstracts: (json['character_abstracts']),
      materialAbstracts: json['material_abstracts']
    );
  }
}