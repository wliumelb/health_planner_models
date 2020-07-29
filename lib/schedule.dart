import 'package:flutter/foundation.dart';

class ScheduleModel {
  int _length; // length of an appointment in minuts, 10,15,20 or 30
  List<List<IntervalModel>> dayIntervals; // length should be 7

  int get length => _length;
  List<IntervalModel> get monday => dayIntervals[1];
  List<IntervalModel> get tuesday => dayIntervals[2];
  List<IntervalModel> get wednesday => dayIntervals[3];
  List<IntervalModel> get thursday => dayIntervals[4];
  List<IntervalModel> get friday => dayIntervals[5];
  List<IntervalModel> get saturday => dayIntervals[6];
  List<IntervalModel> get sunday => dayIntervals[0];

  ScheduleModel({
    @required int length,
    List<IntervalModel> monday = const [],
    List<IntervalModel> tuesday = const [],
    List<IntervalModel> wednesday = const [],
    List<IntervalModel> thursday = const [],
    List<IntervalModel> friday = const [],
    List<IntervalModel> saturday = const [],
    List<IntervalModel> sunday = const [],
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
        .map((timeString) => IntervalModel.fromString(timeString))
        .toList();
    final tuesday = List<String>.from(map['tuesday'] ?? [])
        .map((timeString) => IntervalModel.fromString(timeString))
        .toList();
    final wednesday = List<String>.from(map['wednesday'] ?? [])
        .map((timeString) => IntervalModel.fromString(timeString))
        .toList();
    final thursday = List<String>.from(map['thursday'] ?? [])
        .map((timeString) => IntervalModel.fromString(timeString))
        .toList();
    final friday = List<String>.from(map['friday'] ?? [])
        .map((timeString) => IntervalModel.fromString(timeString))
        .toList();
    final saturday = List<String>.from(map['saturday'] ?? [])
        .map((timeString) => IntervalModel.fromString(timeString))
        .toList();
    final sunday = List<String>.from(map['sunday'] ?? [])
        .map((timeString) => IntervalModel.fromString(timeString))
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
        .map((intervalString) => IntervalModel.fromString(intervalString))
        .toList();
  }
}

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
}
