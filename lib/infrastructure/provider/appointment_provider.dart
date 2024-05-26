import 'package:simple_appointment/entities/appointment_entity.dart';
import 'package:simple_appointment/use_cases/provider/i_appointment_provider.dart';
import 'package:simple_appointment/use_cases/response/reserve_appointment_response_model.dart';
import 'package:simple_appointment/use_cases/response/manage_appointment_response_model.dart';
import 'package:simple_appointment/use_cases/response/cancel_appointment_response_model.dart';

class AppointmentProvider implements IAppointmentProvider {
  @override
  CancelAppointmentResponseModel cancelAppointment(
      AppointmentEntity appointment) {
    // TODO: implement cancelAppointment
    throw UnimplementedError();
  }

  @override
  ManageAppointmentResponseModel manageAppointment(
      AppointmentEntity appointment) {
    // TODO: implement manageAppointment
    throw UnimplementedError();
  }

  @override
  ReserveAppointmentResponseModel reserveAppointment(
      AppointmentEntity appointment) {
    // TODO: implement reserveAppointment
    throw UnimplementedError();
  }
}
