import 'dart:ui';

class IntervalModel {
  final int startHour;
  final int startMinute;
  final int endHour;
  final int endMinute;
  IntervalModel({
    this.startHour,
    this.startMinute,
    this.endHour,
    this.endMinute,
  });
  static IntervalModel fromString(String intervalString) {
    // input sould be like '0800-1200'
    if (intervalString == null || intervalString == '') return null;
    final list = intervalString.split('-');
    final start = list[0];
    final end = list[1];
    return IntervalModel(
      startHour: int.parse(start.substring(0, 2)),
      startMinute: int.parse(start.substring(2)),
      endHour: int.parse(end.substring(0, 2)),
      endMinute: int.parse(end.substring(2)),
    );
  }

  String toString() {
    return startHour.toString().padLeft(2, '0') +
        startMinute.toString().padLeft(2, '0') +
        '-' +
        endHour.toString().padLeft(2, '0') +
        endMinute.toString().padLeft(2, '0');
  }

  @override
  bool operator ==(dynamic o) {
    return o is IntervalModel &&
        o.startHour == startHour &&
        o.startMinute == startMinute &&
        o.endHour == endHour &&
        o.endMinute == endMinute;
  }

  @override
  int get hashCode => hashValues(startHour, startMinute, endHour, endMinute);
}
