// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoSectionModel _$InfoSectionModelFromJson(Map<String, dynamic> json) {
  return InfoSectionModel(
    title: json['title'] as String? ?? '',
    photoUrl: json['photoUrl'] as String? ?? '',
    body: json['body'] as String? ?? '',
  );
}

Map<String, dynamic> _$InfoSectionModelToJson(InfoSectionModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'photoUrl': instance.photoUrl,
      'body': instance.body,
    };
