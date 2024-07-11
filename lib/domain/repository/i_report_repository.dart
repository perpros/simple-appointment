import '../response/report_by_time_response.dart';
import '../use_cases/report_by_time.dart';

abstract class IReportRepository {
  Future<ReportByTimeResponse> reportByTime(ReportByTime timeRange);
}
