// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) {
  return AppointmentModel(
    bookedVia: json['bookedVia'] as String,
    time: DateTime.parse(json['timeStamp'] as String),
    length: json['length'] as int,
    uid: json['uid'] as String,
    doctorUid: json['doctorUid'] as String,
    status: _$enumDecode(_$BookingStatusEnumMap, json['status']),
    patient: PatientModel.fromJson(json['patient'] as Map<String, dynamic>),
    isManualInput: json['isManualInput'] as bool,
  );
}

Map<String, dynamic> _$AppointmentModelToJson(AppointmentModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'bookedVia': instance.bookedVia,
      'timeStamp': instance.time.toIso8601String(),
      'length': instance.length,
      'doctorUid': instance.doctorUid,
      'patient': instance.patient.toJson(),
      'status': _$BookingStatusEnumMap[instance.status],
      'isManualInput': instance.isManualInput,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$BookingStatusEnumMap = {
  BookingStatus.booked: 'booked',
  BookingStatus.confirmed: 'confirmed',
  BookingStatus.chekcedIn: 'chekcedIn',
  BookingStatus.finished: 'finished',
  BookingStatus.noShow: 'noShow',
  BookingStatus.cancelled: 'cancelled',
};
