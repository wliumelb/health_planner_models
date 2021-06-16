// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) {
  return DoctorModel(
    uid: json['uid'] as String,
    name: json['name'] as String,
    email: json['email'] as String? ?? '',
    gender: _$enumDecodeNullable(_$GenderEnumMap, json['gender']) ??
        Gender.unspecified,
    specialty: json['specialty'] as String? ?? '',
    registrationNumber: json['registrationNumber'] as String? ?? '',
    languageList: (json['languageList'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        ['English'],
    info: json['info'] as String? ?? '',
    clinicList: (json['clinicList'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    adminList: (json['adminList'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    photoUrl: json['photoUrl'] as String? ?? '',
  );
}

Map<String, dynamic> _$DoctorModelToJson(DoctorModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender],
      'email': instance.email,
      'specialty': instance.specialty,
      'registrationNumber': instance.registrationNumber,
      'languageList': instance.languageList,
      'info': instance.info,
      'clinicList': instance.clinicList,
      'adminList': instance.adminList,
      'photoUrl': instance.photoUrl,
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

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.unspecified: 'unspecified',
};
