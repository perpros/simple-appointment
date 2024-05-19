import 'package:simple_appointment/entities/appointment_entity.dart';

import 'repository/i_appointment_repository.dart';
import 'response/cancel_appointment_response_model.dart';

class CancelAppointmentModel {
  CancelAppointmentModel({
    required this.appointment,
    required this.repository,
  });

  final AppointmentEntity appointment;
  final IAppointmentRepository repository;

  CancelAppointmentResponseModel cancelAppointment() =>
      repository.cancelAppointment(appointment);
}
