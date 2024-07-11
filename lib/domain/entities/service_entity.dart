import 'time_range_entity.dart';
import 'location_entity.dart';

class ServiceEntity {
  ServiceEntity({
    required this.name,
    this.location,
    this.timeRange,
    this.timeRangeStep,
  });

  final String name;
  final LocationEntity? location;
  final TimeRangeEntity? timeRange;
  final TimeRangeEntity? timeRangeStep;
}
