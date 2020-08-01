import 'dart:ui';
import 'package:flutter/foundation.dart';

import 'interval.dart';

class OpenHoursModel {
  List<IntervalModel> _dayIntervals; // length should be 7

  IntervalModel get monday => _dayIntervals[1];
  IntervalModel get tuesday => _dayIntervals[2];
  IntervalModel get wednesday => _dayIntervals[3];
  IntervalModel get thursday => _dayIntervals[4];
  IntervalModel get friday => _dayIntervals[5];
  IntervalModel get saturday => _dayIntervals[6];
  IntervalModel get sunday => _dayIntervals[0];

  IntervalModel getDay(int day) => _dayIntervals[day];

  OpenHoursModel({
    @required IntervalModel monday,
    @required IntervalModel tuesday,
    @required IntervalModel wednesday,
    @required IntervalModel thursday,
    @required IntervalModel friday,
    @required IntervalModel saturday,
    @required IntervalModel sunday,
  }) : _dayIntervals = [
          sunday,
          monday,
          tuesday,
          wednesday,
          thursday,
          friday,
          saturday
        ];

  static OpenHoursModel fromMap(Map<String, dynamic> map) {
    final monday = IntervalModel.fromString(map['monday']);
    final tuesday = IntervalModel.fromString(map['tuesday']);
    final wednesday = IntervalModel.fromString(map['wednesday']);
    final thursday = IntervalModel.fromString(map['thursday']);
    final friday = IntervalModel.fromString(map['friday']);
    final saturday = IntervalModel.fromString(map['saturday']);
    final sunday = IntervalModel.fromString(map['sunday']);

    return OpenHoursModel(
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
      'monday': monday.toString(),
      'tuesday': tuesday.toString(),
      'wednesday': wednesday.toString(),
      'thursday': thursday.toString(),
      'friday': friday.toString(),
      'saturday': saturday.toString(),
      'sunday': sunday.toString(),
    };
  }

  @override
  bool operator ==(dynamic o) {
    return o is OpenHoursModel &&
        o.sunday == sunday &&
        o.monday == monday &&
        o.tuesday == tuesday &&
        o.wednesday == wednesday &&
        o.thursday == thursday &&
        o.friday == friday &&
        o.saturday == saturday;
  }

  @override
  int get hashCode => hashValues(
        sunday,
        monday,
        tuesday,
        wednesday,
        thursday,
        friday,
        saturday,
      );
}
