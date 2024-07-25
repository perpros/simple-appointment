import 'package:flutter/material.dart';

import '../../view_model/date_slot_view_model.dart';
import '../../view_model/service_view_model.dart';
import '../../view_model/time_slot_view_model.dart';

class SelectTimeSlotView extends StatelessWidget {
  const SelectTimeSlotView({Key? key, required this.service}) : super(key: key);

  final ServiceViewModel service;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  void _onDateSlotSelected(List<TimeSlotViewModel> timeSlots) {
    // TODO
  }

  void _onTimeSlotSelected(TimeSlotViewModel timeSlot) {
    // TODO
  }

  void _onNextAvailability(DateSlotViewModel dateSlot) {
    // TODO
  }
  void _onContactClinic(DateSlotViewModel dateSlot) {
    // TODO
  }
}
