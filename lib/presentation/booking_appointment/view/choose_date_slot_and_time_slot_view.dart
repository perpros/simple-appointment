import 'package:flutter/material.dart';

import '../view_model/time_slot_view_model.dart';
import '../widget/service_widget.dart';
import '../controller/choose_date_slot_and_time_slot_controller.dart';
import '../widget/date_slot_widget.dart';
import '../widget/no_slots_available_widget.dart';
import '../widget/time_slot_section_widget.dart';

class ChooseDateSlotAndTimeSlotView extends StatefulWidget {
  const ChooseDateSlotAndTimeSlotView({Key? key}) : super(key: key);

  @override
  State<ChooseDateSlotAndTimeSlotView> createState() =>
      _ChooseDateSlotAndTimeSlotViewState();
}

class _ChooseDateSlotAndTimeSlotViewState
    extends State<ChooseDateSlotAndTimeSlotView> {
  final ctrl = ChooseDateSlotAndTimeSlotController();
  int currentDateSlotIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ServiceWidget(service: ctrl.service),
          SizedBox(
            height: 48,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ctrl.service.dateSlots.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: DateSlotWidget(
                    dateSlot: ctrl.service.dateSlots[index],
                    onDateSlotSelected: () => _onDateSlotSelected(index)),
              ),
            ),
          ),
          TimeSlotSectionWidget(
              dateSlot: ctrl.service.dateSlots[currentDateSlotIndex],
              onTimeSlotSelected: _onTimeSlotSelected),
          ctrl.service.dateSlots[currentDateSlotIndex].timeSlots.isEmpty
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
      currentDateSlotIndex =
          currentDateSlotIndex + 1 != ctrl.service.dateSlots.length
              ? currentDateSlotIndex + 1
              : 0;
    });
  }

  void _onContactClinic() {
    // TODO
  }
}
