import '../response/cancel_appointment_response.dart';
import '../response/manage_appointment_response.dart';
import '../response/book_appointment_response.dart';
import '../use_cases/cancel_appointment.dart';
import '../use_cases/book_appointment.dart';
import '../use_cases/manage_appointment.dart';

abstract class IAppointmentRepository {
  Future<BookAppointmentResponse> reserveAppointment(
      BookAppointment reserveAppointment);

  Future<CancelAppointmentResponse> cancelAppointment(
      CancelAppointment cancelAppointment);

  Future<ManageAppointmentResponse> manageAppointment(
      ManageAppointment manageAppointment);
}
