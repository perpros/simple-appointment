import 'package:flutter/material.dart';

import '../../view_model/date_slot_view_model.dart';

class DateSlotWidget extends StatelessWidget {
  const DateSlotWidget(
      {Key? key, required this.dateSlot, required this.onDateSlotSelected})
      : super(key: key);

  final DateSlotViewModel dateSlot;
  final Function(DateSlotViewModel) onDateSlotSelected;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => onDateSlotSelected(dateSlot),
        child: Text(dateSlot.date.toString().split(' ')[0]));
  }
}
