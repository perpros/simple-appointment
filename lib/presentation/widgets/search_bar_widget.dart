import 'package:flutter/material.dart';

import '../view_model/service_view_model.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key, required this.searchMethod})
      : super(key: key);

  final Future<List<ServiceViewModel>> Function(String?) searchMethod;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
