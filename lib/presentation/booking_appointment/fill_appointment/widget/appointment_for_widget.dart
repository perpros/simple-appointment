import 'package:flutter/material.dart';

import '../../view_model/patient_view_model.dart';

class AppointmentForWidget extends StatelessWidget {
  AppointmentForWidget({Key? key, required this.addPatient}) : super(key: key);
  final Function(PatientViewModel) addPatient;
  final nameCtrl = TextEditingController();
  final numberCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(controller: nameCtrl),
        TextField(controller: numberCtrl),
        ElevatedButton(
          onPressed: () {
            final name = nameCtrl.text;
            final number = numberCtrl.text;
            final patient = PatientViewModel(name, number);
            addPatient(patient);
          },
          child: const Text('Next'),
        ),
      ],
    );
  }
}
