import 'package:simple_appointment/entities/time_range_entity.dart';

import 'provider/i_report_provider.dart';
import 'response/report_by_time_response_model.dart';

class ReportByTimeModel {
  ReportByTimeModel({
    required this.provider,
    required this.timeRange,
  });

  final IReportProvider provider;
  final TimeRangeEntity timeRange;

  ReportByTimeResponseModel reportByTime(TimeRangeEntity timeRange) =>
      provider.reportByTime(timeRange) as ReportByTimeResponseModel;
}
