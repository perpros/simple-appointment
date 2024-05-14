import 'service_entity.dart';
import 'time_range_entity.dart';
import 'user_entity.dart';

class AppointmentEntity {
  AppointmentEntity({
    required this.user,
    required this.service,
    this.estimateTime,
  });

  final UserEntity user;
  final ServiceEntity service;
  final TimeRangeEntity? estimateTime;
}
