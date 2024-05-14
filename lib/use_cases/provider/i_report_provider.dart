import 'package:simple_appointment/entities/time_range_entity.dart';

import '../response/report_by_time_response_model.dart';

abstract class IReportProvider {
  ReportByTimeResponseModel reportByTime(TimeRangeEntity timeRange);
}
