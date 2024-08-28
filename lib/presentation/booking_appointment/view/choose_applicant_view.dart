import 'package:flutter/material.dart';

import '../view_model/applicant_view_model.dart';
import '../view_model/service_view_model.dart';
import '../view_model/appointment_for_view_model.dart';
import '../widget/service_widget.dart';
import '../widget/appointment_for_widget.dart';
import '../widget/who_is_applicant_widget.dart';

class ChooseApplicantView extends StatelessWidget {
  const ChooseApplicantView(
      {Key? key, required this.service, required this.patiens})
      : super(key: key);

  final ServiceViewModel service;
  final List<ApplicantViewModel> patiens;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ServiceWidget(service: service),
          AppointmentForWidget(addApplicant: (ApplicantViewModel applicant) {}),
          WhoIsApplicantWidget(),
        ],
      ),
    );
  }

  void _onNext(AppointmentForViewModel appointmentFor) {
    // TODO
  }
  void _onApplicantSelected(ApplicantViewModel applicantViewModel) {
    // TODO
  }
}
