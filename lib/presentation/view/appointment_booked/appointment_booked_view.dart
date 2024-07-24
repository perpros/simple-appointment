import 'package:flutter/material.dart';

import '../../view_model/booked_appointment_view_model.dart';

class AppointmentBookedView extends StatelessWidget {
  const AppointmentBookedView({Key? key, required this.apointment})
      : super(key: key);

  final BookedAppointmentViewModel apointment;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  void onView() {}
  void onRebooking() {}
}
