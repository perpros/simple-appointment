import 'package:flutter/material.dart';

class NoSlotsAvailableWidget extends StatelessWidget {
  const NoSlotsAvailableWidget(
      {Key? key,
      required this.onNextAvailability,
      required this.onContactCloinic})
      : super(key: key);

  final Function onNextAvailability;
  final Function onContactCloinic;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () => onNextAvailability(),
            child: const Text('Next availability on Saturday, 28 Feb')),
        const Text('OR'),
        OutlinedButton(
            onPressed: () => onContactCloinic(),
            child: const Text('Contact Clinic')),
      ],
    );
  }
}
