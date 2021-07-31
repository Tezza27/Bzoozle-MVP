class OpenHours {
  final String openDay;
  final int? openTimeHour;
  final int? openTimeMinute;
  final int? durationHour;
  final int? durationMiniute;

  OpenHours(
      {required this.openDay,
      this.openTimeHour,
      this.openTimeMinute,
      this.durationHour,
      this.durationMiniute});
}

enum weekDays { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }
