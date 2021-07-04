import 'package:json_annotation/json_annotation.dart';

import 'interval.dart';

@JsonSerializable(explicitToJson: true)
class WeekScheduleModel {
  @JsonKey(defaultValue: [])
  final List<IntervalModel> monday;

  @JsonKey(defaultValue: [])
  final List<IntervalModel> tuesday;

  @JsonKey(defaultValue: [])
  final List<IntervalModel> wednesday;

  @JsonKey(defaultValue: [])
  final List<IntervalModel> thursday;

  @JsonKey(defaultValue: [])
  final List<IntervalModel> friday;

  @JsonKey(defaultValue: [])
  final List<IntervalModel> saturday;

  @JsonKey(defaultValue: [])
  final List<IntervalModel> sunday;

  WeekScheduleModel({
    required this.monday,
    required this.tuesday,
    required this.wednesday,
    required this.thursday,
    required this.friday,
    required this.saturday,
    required this.sunday,
  });

  static get empty => WeekScheduleModel(
        friday: [],
        monday: [],
        saturday: [],
        sunday: [],
        thursday: [],
        tuesday: [],
        wednesday: [],
      );

  factory WeekScheduleModel.fromJson(Map<String, dynamic> json) {
    return WeekScheduleModel(
      monday: (json['monday'] as List<dynamic>?)
              ?.map((e) => IntervalModel.fromJson(e as String))
              .toList() ??
          [],
      tuesday: (json['tuesday'] as List<dynamic>?)
              ?.map((e) => IntervalModel.fromJson(e as String))
              .toList() ??
          [],
      wednesday: (json['wednesday'] as List<dynamic>?)
              ?.map((e) => IntervalModel.fromJson(e as String))
              .toList() ??
          [],
      thursday: (json['thursday'] as List<dynamic>?)
              ?.map((e) => IntervalModel.fromJson(e as String))
              .toList() ??
          [],
      friday: (json['friday'] as List<dynamic>?)
              ?.map((e) => IntervalModel.fromJson(e as String))
              .toList() ??
          [],
      saturday: (json['saturday'] as List<dynamic>?)
              ?.map((e) => IntervalModel.fromJson(e as String))
              .toList() ??
          [],
      sunday: (json['sunday'] as List<dynamic>?)
              ?.map((e) => IntervalModel.fromJson(e as String))
              .toList() ??
          [],
    );
  }
  Map<String, dynamic> toJson() => <String, dynamic>{
        'monday': monday.map((e) => e.toJson()).toList(),
        'tuesday': tuesday.map((e) => e.toJson()).toList(),
        'wednesday': wednesday.map((e) => e.toJson()).toList(),
        'thursday': thursday.map((e) => e.toJson()).toList(),
        'friday': friday.map((e) => e.toJson()).toList(),
        'saturday': saturday.map((e) => e.toJson()).toList(),
        'sunday': sunday.map((e) => e.toJson()).toList(),
      };
}
