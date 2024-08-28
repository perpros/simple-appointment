import 'package:flutter/material.dart';

import '../view_model/appointment_for_view_model.dart';
import '../view_model/service_view_model.dart';
import '../view_model/time_slot_view_model.dart';

class ConfirmingAppointmentBookingView extends StatelessWidget {
  const ConfirmingAppointmentBookingView(
      {Key? key,
      required this.appointmentFor,
      required this.service,
      required this.timeSlot})
      : super(key: key);

  final ServiceViewModel service;
  final AppointmentForViewModel appointmentFor;
  final TimeSlotViewModel timeSlot;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  void _onConfirm() {
    // TODO
  }
}
