import 'package:flutter/material.dart';

import '../view_model/service_view_model.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({Key? key, required this.service}) : super(key: key);

  final ServiceViewModel service;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(
            'assets/images/shape-generic.png',
            width: 80,
            height: 80,
          ),
        ),
        const SizedBox(width: 16),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(service.name,
                      style: Theme.of(context).textTheme.titleLarge),
                  Text(service.stars.toString()),
                ],
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(service.details),
                  Text(service.description),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
