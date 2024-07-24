import 'appointment_for_view_model.dart';
import 'service_view_model.dart';
import 'time_slot_view_model.dart';

class BookedAppointmentViewModel {
  BookedAppointmentViewModel(this.appointmentFor, this.service, this.timeSlot);

  final AppointmentForViewModel appointmentFor;
  final ServiceViewModel service;
  final TimeSlotViewModel timeSlot;
}
