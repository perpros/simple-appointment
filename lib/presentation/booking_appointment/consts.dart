import 'view_model/date_slot_view_model.dart';
import 'view_model/service_view_model.dart';
import 'view_model/time_slot_view_model.dart';

var defaultServices = <ServiceViewModel>[
  ServiceViewModel(123, 'Service One', 'Details Service One',
      'Description service one', 3.6, null, dateSlots),
  ServiceViewModel(124, 'Service Two', 'Details Service Two',
      'Description service Two', 4.6, null, dateSlots),
  ServiceViewModel(125, 'Service Three', 'Details Service Three',
      'Description service Three', 2.6, null, dateSlots),
  ServiceViewModel(134, 'Service Four', 'Details Service Four',
      'Description service Four', 3.9, null, dateSlots),
  ServiceViewModel(136, 'Service Five', 'Details Service Five',
      'Description service Five', 4.6, null, dateSlots),
  ServiceViewModel(133, 'Service Six', 'Details Service Six',
      'Description service Six', 2.4, null, dateSlots),
  ServiceViewModel(141, 'Service Seven', 'Details Service Seven',
      'Description service Seven', 4.3, null, dateSlots),
  ServiceViewModel(142, 'Service 8', 'Details Service 8',
      'Description service 8', 4.5, null, dateSlots),
  ServiceViewModel(145, 'Service Nine', 'Details Service Nine',
      'Description service Nine', 3.5, null, dateSlots),
];

const List<TimeSlotViewModel> dateSlots0 = [];

const List<TimeSlotViewModel> dateSlots1 = [
  TimeSlotViewModel("08:30-am", "09:00-am"),
  TimeSlotViewModel("09:00-am", "09:30-am"),
  TimeSlotViewModel("09:30-am", "10:00-am"),
  TimeSlotViewModel("10:00-am", "10:30-am"),
  TimeSlotViewModel("02:30-pm", "03:00-pm"),
  TimeSlotViewModel("03:00-pm", "03:30-pm"),
  TimeSlotViewModel("03:30-pm", "04:00-pm"),
  TimeSlotViewModel("04:00-pm", "04:30-pm"),
  TimeSlotViewModel("04:30-pm", "05:00-pm"),
];
const List<TimeSlotViewModel> dateSlots2 = [
  TimeSlotViewModel("08:32-am", "09:02-am"),
  TimeSlotViewModel("09:02-am", "09:32-am"),
  TimeSlotViewModel("09:32-am", "10:02-am"),
  TimeSlotViewModel("02:32-pm", "03:02-pm"),
  TimeSlotViewModel("03:02-pm", "03:32-pm"),
  TimeSlotViewModel("03:32-pm", "04:02-pm"),
  TimeSlotViewModel("04:02-pm", "04:32-pm"),
  TimeSlotViewModel("04:32-pm", "05:02-pm"),
  TimeSlotViewModel("05:02-pm", "05:32-pm"),
];

final List<DateSlotViewModel> dateSlots = [
  DateSlotViewModel(DateTime(2017, 9, 7), dateSlots1.length, dateSlots1),
  DateSlotViewModel(DateTime(2017, 9, 8), dateSlots0.length, dateSlots0),
  DateSlotViewModel(DateTime(2017, 9, 9), dateSlots2.length, dateSlots2),
  DateSlotViewModel(DateTime(2017, 9, 10), dateSlots1.length, dateSlots1),
  DateSlotViewModel(DateTime(2017, 9, 11), dateSlots2.length, dateSlots2),
];
