import '../entities/time_range_entity.dart';

class ManageAppointment {
  ManageAppointment({required this.appointmentId, required this.timeRange});
  final String appointmentId;
  final TimeRangeEntity timeRange;
}
