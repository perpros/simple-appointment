import 'package:simple_appointment/entities/appointment_entity.dart';

import '../response/reserve_appointment_response_model.dart';

abstract class IAppointmentProvider {
  ReserveAppointmentResponseModel reserveAppointment(
      AppointmentEntity appointment);
}
