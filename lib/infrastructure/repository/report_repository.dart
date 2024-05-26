import 'package:simple_appointment/entities/time_range_entity.dart';
import 'package:simple_appointment/use_cases/repository/i_report_repository.dart';
import 'package:simple_appointment/use_cases/response/report_by_time_response_model.dart';

import '../provider/report_provider.dart';

class ReportRepository implements IReportRepository {
  ReportRepository(this.provider);

  @override
  final ReportProvider provider;

  @override
  ReportByTimeResponseModel reportByTime(TimeRangeEntity timeRange) =>
      provider.reportByTime(timeRange);
}
