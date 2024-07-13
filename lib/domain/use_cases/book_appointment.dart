import '../entities/time_range_entity.dart';

class BookAppointment {
  BookAppointment({
    required this.servicetId,
    required this.userId,
    required this.timeRange,
  });
  final String servicetId;
  final String userId;
  final TimeRangeEntity timeRange;
}
