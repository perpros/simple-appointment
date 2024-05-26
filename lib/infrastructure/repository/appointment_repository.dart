import 'package:simple_appointment/entities/appointment_entity.dart';
import 'package:simple_appointment/use_cases/repository/i_appointment_repository.dart';
import 'package:simple_appointment/use_cases/response/reserve_appointment_response_model.dart';
import 'package:simple_appointment/use_cases/response/manage_appointment_response_model.dart';
import 'package:simple_appointment/use_cases/response/cancel_appointment_response_model.dart';

import '../provider/appointment_provider.dart';

class AppointmentRepository implements IAppointmentRepository {
  AppointmentRepository(this.provider);

  @override
  final AppointmentProvider provider;

  @override
  CancelAppointmentResponseModel cancelAppointment(
          AppointmentEntity appointment) =>
      provider.cancelAppointment(appointment);

  @override
  ManageAppointmentResponseModel manageAppointment(
          AppointmentEntity appointment) =>
      provider.manageAppointment(appointment);

  @override
  ReserveAppointmentResponseModel reserveAppointment(
          AppointmentEntity appointment) =>
      provider.reserveAppointment(appointment);
}
