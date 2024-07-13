class TimeRangeEntity {
  TimeRangeEntity({
    required this.startDate,
    this.endDate,
  });

  final String startDate;
  final String? endDate;

  @override
  String toString() =>
      endDate != null ? startDate + " until " + endDate! : startDate;
}
