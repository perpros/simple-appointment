import 'package:simple_appointment/entities/appointment_entity.dart';

import '../provider/i_appointment_provider.dart';
import '../response/cancel_appointment_response_model.dart';
import '../response/manage_appointment_response_model.dart';
import '../response/reserve_appointment_response_model.dart';

abstract class IAppointmentRepository {
  IAppointmentRepository(this.provider);

  final IAppointmentProvider provider;

  ReserveAppointmentResponseModel reserveAppointment(
          AppointmentEntity appointment) =>
      provider.reserveAppointment(appointment);

  CancelAppointmentResponseModel cancelAppointment(
          AppointmentEntity appointment) =>
      provider.cancelAppointment(appointment);

  ManageAppointmentResponseModel manageAppointment(
          AppointmentEntity appointment) =>
      provider.manageAppointment(appointment);
}
