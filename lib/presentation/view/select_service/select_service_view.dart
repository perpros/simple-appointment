import 'package:flutter/material.dart';

import '../../view_model/service_view_model.dart';
// import '../../widgets/search_bar_widget.dart';
// import '../../widgets/service_widget.dart';

class SelectServiceView extends StatefulWidget {
  const SelectServiceView(
      {Key? key, required this.services, required this.searchMethod})
      : super(key: key);

  final Future<List<ServiceViewModel>> Function(String?) searchMethod;
  final List<ServiceViewModel> services;

  @override
  State<StatefulWidget> createState() => SelectServiceState();
}

class SelectServiceState extends State<SelectServiceView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  void onTextChanged(String serachText) async {
    final services = await widget.searchMethod(serachText);
    widget.services.clear();
    widget.services.addAll(services);
  }
}
