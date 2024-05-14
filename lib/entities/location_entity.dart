import 'time_range_entity.dart';

class LocationEntity {
  LocationEntity({
    required this.name,
    required this.address,
    this.timeRange,
  });

  final String name;
  final String address;
  final TimeRangeEntity? timeRange;
}
