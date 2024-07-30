import 'package:flutter/material.dart';

import '../../view_model/date_slot_view_model.dart';
import '../../view_model/service_view_model.dart';
import '../../view_model/time_slot_view_model.dart';
import '../../widgets/service_widget.dart';
import 'date_slot_widget.dart';
import 'time_slot_section_widget.dart';

class SelectDateSlotView extends StatefulWidget {
  const SelectDateSlotView(
      {Key? key, required this.service, required this.dateSlot})
      : super(key: key);

  final ServiceViewModel service;
  final List<DateSlotViewModel> dateSlot;

  @override
  State<SelectDateSlotView> createState() => _SelectDateSlotViewState();
}

class _SelectDateSlotViewState extends State<SelectDateSlotView> {
  late DateSlotViewModel selectedDateSlot;

  @override
  void initState() {
    selectedDateSlot = widget.dateSlot[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ServiceWidget(service: widget.service),
          SizedBox(
            height: 48,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.dateSlot.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: DateSlotWidget(
                    dateSlot: widget.dateSlot[index],
                    onDateSlotSelected: _onDateSlotSelected),
              ),
            ),
          ),
          TimeSlotSectionWidget(
              dateSlot: selectedDateSlot,
              onTimeSlotSelected: _onTimeSlotSelected),
        ],
      ),
    );
  }

  void _onDateSlotSelected(DateSlotViewModel dateSlot) {
    selectedDateSlot = dateSlot;
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
