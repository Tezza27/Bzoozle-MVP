class HappyHourSession {
  final String day;
  final String startTime;
  final int duration;
  final String? offerSet;

  HappyHourSession({
    required this.day,
    required this.startTime,
    required this.duration,
    this.offerSet,
  });
}
