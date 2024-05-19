import 'package:simple_appointment/entities/appointment_entity.dart';

import '../response/cancel_appointment_response_model.dart';
import '../response/manage_appointment_response_model.dart';
import '../response/reserve_appointment_response_model.dart';

abstract class IAppointmentProvider {
  ReserveAppointmentResponseModel reserveAppointment(
      AppointmentEntity appointment);

  CancelAppointmentResponseModel cancelAppointment(
      AppointmentEntity appointment);

  ManageAppointmentResponseModel manageAppointment(
      AppointmentEntity appointment);
}
