import 'package:flutter/foundation.dart';

class ScheduleModel {
  int _length; // length of an appointment in minuts, 10,15,20 or 30
  List<List<_Interval>> dayIntervals; // length should be 7

  int get length => _length;
  List<_Interval> get monday => dayIntervals[1];
  List<_Interval> get tuesday => dayIntervals[2];
  List<_Interval> get wednesday => dayIntervals[3];
  List<_Interval> get thursday => dayIntervals[4];
  List<_Interval> get friday => dayIntervals[5];
  List<_Interval> get saturday => dayIntervals[6];
  List<_Interval> get sunday => dayIntervals[0];

  ScheduleModel({
    @required int length,
    List<_Interval> monday = const [],
    List<_Interval> tuesday = const [],
    List<_Interval> wednesday = const [],
    List<_Interval> thursday = const [],
    List<_Interval> friday = const [],
    List<_Interval> saturday = const [],
    List<_Interval> sunday = const [],
  })  : _length = length,
        dayIntervals = [
          sunday,
          monday,
          tuesday,
          wednesday,
          thursday,
          friday,
          saturday
        ];

  static ScheduleModel fromMap(Map<String, dynamic> map) {
    final int length = map['length'] ?? 15;
    final monday = List<String>.from(map['monday'] ?? [])
        .map((timeString) => _Interval.fromString(timeString))
        .toList();
    final tuesday = List<String>.from(map['tuesday'] ?? [])
        .map((timeString) => _Interval.fromString(timeString))
        .toList();
    final wednesday = List<String>.from(map['wednesday'] ?? [])
        .map((timeString) => _Interval.fromString(timeString))
        .toList();
    final thursday = List<String>.from(map['thursday'] ?? [])
        .map((timeString) => _Interval.fromString(timeString))
        .toList();
    final friday = List<String>.from(map['friday'] ?? [])
        .map((timeString) => _Interval.fromString(timeString))
        .toList();
    final saturday = List<String>.from(map['saturday'] ?? [])
        .map((timeString) => _Interval.fromString(timeString))
        .toList();
    final sunday = List<String>.from(map['sunday'] ?? [])
        .map((timeString) => _Interval.fromString(timeString))
        .toList();

    return ScheduleModel(
      length: length,
      monday: monday,
      tuesday: tuesday,
      wednesday: wednesday,
      thursday: thursday,
      friday: friday,
      saturday: saturday,
      sunday: sunday,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'length': length,
      'monday': monday.map((interval) => interval.toString()).toList(),
      'tuesday': tuesday.map((interval) => interval.toString()).toList(),
      'wednesday': wednesday.map((interval) => interval.toString()).toList(),
      'thursday': thursday.map((interval) => interval.toString()).toList(),
      'friday': friday.map((interval) => interval.toString()).toList(),
      'saturday': saturday.map((interval) => interval.toString()).toList(),
      'sunday': sunday.map((interval) => interval.toString()).toList(),
    };
  }

  void setLength(int length) {
    this._length = length;
  }

  /// intervals should be like ['0900-1200', '1300-1600'], sunday is 0, monday 1, ... satruday 6
  void setDaySchedule({@required int day, List<String> intervals = const []}) {
    this.dayIntervals[day] = intervals
        .map((intervalString) => _Interval.fromString(intervalString))
        .toList();
  }
}

class _Interval {
  final int startHour;
  final int startMinute;
  final int endHour;
  final int endMinute;
  _Interval({
    this.startHour,
    this.startMinute,
    this.endHour,
    this.endMinute,
  });
  static _Interval fromString(String intervalString) {
    // input sould be like '0800-1200'
    final list = intervalString.split('-');
    final start = list[0];
    final end = list[1];
    return _Interval(
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
}
