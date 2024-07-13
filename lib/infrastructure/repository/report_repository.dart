import 'package:simple_appointment/domain/repository/i_report_repository.dart';
import 'package:simple_appointment/domain/use_cases/report_by_time.dart';
import 'package:simple_appointment/domain/response/report_by_time_response.dart';

import '../interfaces/i_request_handler.dart';

class ReportRepository implements IReportRepository {
  ReportRepository(this.requestHandler);

  final IRequestHandler requestHandler;
  @override
  Future<ReportByTimeResponse> reportByTime(ReportByTime reportByTime) async {
    Map<String, dynamic> res = await requestHandler.postReq(
      url: "v1/appointment/cancel",
      fields: {"time_range": reportByTime.timeRange.toString()},
    );

    return ReportByTimeResponse.fromJson(res);
  }
}
