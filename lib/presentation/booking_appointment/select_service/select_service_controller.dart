import '../consts.dart';
import '../view_model/service_view_model.dart';

class SelectServiceController {
  final List<ServiceViewModel> _services = [...defaultServices];
  List<ServiceViewModel> get services => _services;
}
