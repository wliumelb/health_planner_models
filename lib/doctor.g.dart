// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) {
  return DoctorModel(
    uid: json['uid'] as String,
    name: json['name'] as String,
    gender: _$enumDecode(_$GenderEnumMap, json['gender']),
    specialty: json['specialty'] as String? ?? '',
    registrationNumber: json['registrationNumber'] as String? ?? '',
    languageList: (json['languageList'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        ['English'],
    info: json['info'] as String? ?? '',
    clinicList:
        (json['clinicList'] as List<dynamic>).map((e) => e as String).toList(),
    photoUrl: json['photoUrl'] as String,
    thirdPartyUrl: json['thirdPartyUrl'] as String? ?? '',
  );
}

Map<String, dynamic> _$DoctorModelToJson(DoctorModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender],
      'specialty': instance.specialty,
      'registrationNumber': instance.registrationNumber,
      'languageList': instance.languageList,
      'info': instance.info,
      'clinicList': instance.clinicList,
      'photoUrl': instance.photoUrl,
      'thirdPartyUrl': instance.thirdPartyUrl,
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

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.unspecified: 'unspecified',
};
