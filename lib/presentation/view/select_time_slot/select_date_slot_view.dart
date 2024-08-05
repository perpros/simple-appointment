import 'package:flutter/material.dart';

import '../../view_model/date_slot_view_model.dart';
import '../../view_model/service_view_model.dart';
import '../../view_model/time_slot_view_model.dart';
import '../../widgets/service_widget.dart';
import 'date_slot_widget.dart';
import 'no_slots_available_widget.dart';
import 'time_slot_section_widget.dart';

class SelectDateSlotView extends StatefulWidget {
  const SelectDateSlotView(
      {Key? key, required this.service, required this.dateSlots})
      : super(key: key);

  final ServiceViewModel service;
  final List<DateSlotViewModel> dateSlots;

  @override
  State<SelectDateSlotView> createState() => _SelectDateSlotViewState();
}

class _SelectDateSlotViewState extends State<SelectDateSlotView> {
  int currentDateSlotIndex = 0;

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
              itemCount: widget.dateSlots.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: DateSlotWidget(
                    dateSlot: widget.dateSlots[index],
                    onDateSlotSelected: () => _onDateSlotSelected(index)),
              ),
            ),
          ),
          TimeSlotSectionWidget(
              dateSlot: widget.dateSlots[currentDateSlotIndex],
              onTimeSlotSelected: _onTimeSlotSelected),
          widget.dateSlots[currentDateSlotIndex].timeSlots.isEmpty
              ? NoSlotsAvailableWidget(
                  onNextAvailability: () => _onNextAvailability(),
                  onContactCloinic: _onContactClinic)
              : Container()
        ],
      ),
    );
  }

  void _onDateSlotSelected(int dateSlotIndex) {
    setState(() {
      currentDateSlotIndex = dateSlotIndex;
    });
  }

  void _onTimeSlotSelected(TimeSlotViewModel timeSlot) {
    // TODO
  }

  void _onNextAvailability() {
    setState(() {
      currentDateSlotIndex = currentDateSlotIndex + 1 != widget.dateSlots.length
          ? currentDateSlotIndex + 1
          : 0;
    });
  }

  void _onContactClinic() {
    // TODO
  }
}
