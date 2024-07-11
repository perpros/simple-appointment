import '../entities/time_range_entity.dart';
import '../entities/user_entity.dart';

class BookAppointment {
  BookAppointment({
    required this.servicetId,
    required this.user,
    required this.timeRange,
  });
  final String servicetId;
  final UserEntity user;
  final TimeRangeEntity timeRange;
}
