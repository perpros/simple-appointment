import 'package:flutter/material.dart';

import '../view_model/service_view_model.dart';
import '../widget/service_widget.dart';
import 'select_service_controller.dart';

class SelectServiceView extends StatefulWidget {
  const SelectServiceView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SelectServiceState();
}

class SelectServiceState extends State<SelectServiceView> {
  final ctrl = SelectServiceController();
  final List<ServiceViewModel> services = [];

  @override
  void initState() {
    services.addAll(ctrl.services);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        title: SearchBar(
          elevation: WidgetStateProperty.resolveWith<double>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.focused)) {
                return 1.0;
              }
              return 0;
            },
          ),
          hintText: 'Hinted search text',
          trailing: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          onChanged: onTextChanged,
        ),
      ),
      body: ListView.builder(
        itemBuilder: serviceItemBuilder,
        itemCount: services.length,
      ),
    );
  }

  void onTextChanged(String serachText) async {
    services.clear();
    setState(() {
      services.addAll(ctrl.services.where((service) =>
          service.name.toLowerCase().contains(serachText.toLowerCase())));
    });
  }

  Widget? serviceItemBuilder(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 24, bottom: 12),
            child: ServiceWidget(service: services[index]),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
