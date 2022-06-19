import 'dart:convert';

class RantsRaves {
  String type = "Rant";
  String title = "untitled";
  String? category;
  String? date;
  String? name;
  String? location;
  String? content;
  int strongDisagreeCount = 0;
  int disagreeCount = 0;
  int agreeCount = 0;
  int strongAgreeCount = 0;
  int funnyCount = 0;
  int cheersCount = 0;
  RantsRaves({
    required this.type,
    required this.title,
    this.category,
    this.date,
    this.name,
    this.location,
    this.content,
    required this.strongDisagreeCount,
    required this.disagreeCount,
    required this.agreeCount,
    required this.strongAgreeCount,
    required this.funnyCount,
    required this.cheersCount,
  });

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'title': title,
      'category': category,
      'date': date,
      'name': name,
      'location': location,
      'content': content,
      'strongDisagreeCount': strongDisagreeCount,
      'disagreeCount': disagreeCount,
      'agreeCount': agreeCount,
      'strongAgreeCount': strongAgreeCount,
      'funnyCount': funnyCount,
      'cheersCount': cheersCount,
    };
  }

  factory RantsRaves.fromMap(Map<String, dynamic> map) {
    return RantsRaves(
      type: map['type'] ?? '',
      title: map['title'] ?? '',
      category: map['category'],
      date: map['date'],
      name: map['name'],
      location: map['location'],
      content: map['content'],
      strongDisagreeCount: map['strongDisagreeCount']?.toInt() ?? 0,
      disagreeCount: map['disagreeCount']?.toInt() ?? 0,
      agreeCount: map['agreeCount']?.toInt() ?? 0,
      strongAgreeCount: map['strongAgreeCount']?.toInt() ?? 0,
      funnyCount: map['funnyCount']?.toInt() ?? 0,
      cheersCount: map['cheersCount']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory RantsRaves.fromJson(String source) =>
      RantsRaves.fromMap(json.decode(source));
}
