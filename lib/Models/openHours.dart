class OpenHours {
  final String openDay;
  final String openTime;
  final String closeTime;

  OpenHours({
    required this.openDay,
    required this.openTime,
    required this.closeTime,
  });
}

enum weekDays { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }
