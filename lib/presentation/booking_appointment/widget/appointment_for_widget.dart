import 'package:flutter/material.dart';

import '../view_model/applicant_view_model.dart';

class AppointmentForWidget extends StatelessWidget {
  AppointmentForWidget({Key? key, required this.addApplicant})
      : super(key: key);
  final Function(ApplicantViewModel) addApplicant;
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
            final applicant = ApplicantViewModel(name, number, 'picUrl');
            addApplicant(applicant);
          },
          child: const Text('Next'),
        ),
      ],
    );
  }
}
