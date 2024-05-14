import 'package:simple_appointment/entities/time_range_entity.dart';

import '../provider/i_report_provider.dart';
import '../response/report_by_time_response_model.dart';

abstract class IReportRepository {
  IReportRepository(this.provider);

  final IReportProvider provider;

  ReportByTimeResponseModel reportByTime(TimeRangeEntity timeRange) =>
      provider.reportByTime(timeRange);
}
