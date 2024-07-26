import 'package:flutter/material.dart';

import '../view_model/service_view_model.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({Key? key, required this.service}) : super(key: key);

  final ServiceViewModel service;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 80, height: 80),
        Column(
          children: [
            Row(
              children: [
                Text(service.name),
                Text(service.stars.toString()),
              ],
            ),
            Text(service.details),
            Text(service.description),
          ],
        ),
      ],
    );
  }
}
