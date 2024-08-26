import 'time_slot_view_model.dart';

class DateSlotViewModel {
  const DateSlotViewModel(
    this.date,
    this.availableSlot,
    this.timeSlots,
  );

  final DateTime date;
  final int availableSlot;
  final List<TimeSlotViewModel> timeSlots;
}
