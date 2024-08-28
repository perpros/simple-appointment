import 'package:flutter/material.dart';

import '../view_model/date_slot_view_model.dart';
import '../view_model/time_slot_view_model.dart';

class TimeSlotSectionWidget extends StatelessWidget {
  const TimeSlotSectionWidget(
      {Key? key, required this.dateSlot, required this.onTimeSlotSelected})
      : super(key: key);

  final DateSlotViewModel dateSlot;
  final Function(TimeSlotViewModel) onTimeSlotSelected;

  @override
  Widget build(BuildContext context) {
    final amSlots = dateSlot.timeSlots
        .where((TimeSlotViewModel slot) => slot.startTime.contains('am'));
    final pmSlots = dateSlot.timeSlots
        .where((TimeSlotViewModel slot) => slot.startTime.contains('pm'));

    return Column(
      children: [
        Text(dateSlot.date.toString().split(' ')[0]),
        Column(
          children: [
            const Text("Before noon"),
            SizedBox(
              height: 200,
              child: GridView.extent(
                maxCrossAxisExtent: 86.0, // maximum item width
                mainAxisSpacing: 8.0, // spacing between rows
                crossAxisSpacing: 8.0, // spacing between columns
                padding: const EdgeInsets.all(8.0), // padding around the grid
                children: amSlots.isEmpty
                    ? [const Text('No slots available')]
                    : amSlots.map((timeSlot) {
                        return ElevatedButton(
                          onPressed: () => onTimeSlotSelected(timeSlot),
                          child: Text(timeSlot.startTime.split('-')[0]),
                        );
                      }).toList(),
              ),
            ),
          ],
        ),
        Column(
          children: [
            const Text("Afternoon"),
            SizedBox(
              height: 200,
              child: GridView.extent(
                maxCrossAxisExtent: 86.0, // maximum item width
                mainAxisSpacing: 8.0, // spacing between rows
                crossAxisSpacing: 8.0, // spacing between columns
                padding: const EdgeInsets.all(8.0), // padding around the grid
                children: pmSlots.isEmpty
                    ? [const Text('No slots available')]
                    : pmSlots.map((timeSlot) {
                        return ElevatedButton(
                          onPressed: () {
                            onTimeSlotSelected(timeSlot);
                          },
                          child: Text(timeSlot.startTime.split('-')[0]),
                        );
                      }).toList(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
