import 'package:simple_appointment/entities/appointment_entity.dart';

import 'repository/i_appointment_repository.dart';
import 'response/reserve_appointment_response_model.dart';

class ReserveAppointmentModel {
  ReserveAppointmentModel({
    required this.appointment,
    required this.repository,
  });

  final AppointmentEntity appointment;
  final IAppointmentRepository repository;

  ReserveAppointmentResponseModel reserveAppointment() =>
      repository.reserveAppointment(appointment);
}
