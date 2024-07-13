import 'package:simple_appointment/domain/repository/i_appointment_repository.dart';
import 'package:simple_appointment/domain/use_cases/manage_appointment.dart';
import 'package:simple_appointment/domain/use_cases/cancel_appointment.dart';
import 'package:simple_appointment/domain/use_cases/book_appointment.dart';
import 'package:simple_appointment/domain/response/manage_appointment_response.dart';
import 'package:simple_appointment/domain/response/cancel_appointment_response.dart';
import 'package:simple_appointment/domain/response/book_appointment_response.dart';

import '../interfaces/i_request_handler.dart';

class AppointmentRepository implements IAppointmentRepository {
  AppointmentRepository(this.requestHandler);

  final IRequestHandler requestHandler;

  @override
  Future<CancelAppointmentResponse> cancelAppointment(
      CancelAppointment cancelAppointment) async {
    Map<String, dynamic> res = await requestHandler.postReq(
      url: "v1/appointment/cancel",
      fields: {"id": cancelAppointment.appointmentId},
    );

    return CancelAppointmentResponse.fromMap(res);
  }

  @override
  Future<ManageAppointmentResponse> manageAppointment(
      ManageAppointment manageAppointment) async {
    Map<String, dynamic> res = await requestHandler.postReq(
      url: "v1/appointment/manage",
      fields: {
        "id": manageAppointment.appointmentId,
        "time_range": manageAppointment.timeRange.toString()
      },
    );

    return ManageAppointmentResponse.fromMap(res);
  }

  @override
  Future<BookAppointmentResponse> bookAppointment(
      BookAppointment bookAppointment) async {
    Map<String, dynamic> res = await requestHandler.postReq(
      url: "v1/appointment/book",
      fields: {
        "servicet_id": bookAppointment.servicetId,
        "user_id": bookAppointment.userId,
        "time_range": bookAppointment.timeRange.toString()
      },
    );

    return BookAppointmentResponse.fromMap(res);
  }
}
