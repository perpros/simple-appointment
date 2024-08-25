import 'package:flutter/material.dart';

import '../view_model/patient_view_model.dart';
import '../view_model/service_view_model.dart';
import '../confirm_appointment/view_model/appointment_for_view_model.dart';
import '../widget/service_widget.dart';
import 'widget/appointment_for_widget.dart';
import 'widget/who_is_patient_widget.dart';
// import '../../widgets/patient_widget.dart';
// import '../../widgets/service_widget.dart';
// import 'appointment_for_widget.dart';

class FillAppointmentView extends StatelessWidget {
  const FillAppointmentView(
      {Key? key, required this.service, required this.patiens})
      : super(key: key);

  final ServiceViewModel service;
  final List<PatientViewModel> patiens;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ServiceWidget(service: service),
          AppointmentForWidget(addPatient: (PatientViewModel patient) {}),
          WhoIsPatientWidget(),
        ],
      ),
    );
  }

  void _onNext(AppointmentForViewModel appointmentFor) {
    // TODO
  }
  void _onPatientSelected(PatientViewModel patientViewModel) {
    // TODO
  }
}
