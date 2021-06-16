// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactInfoModel _$ContactInfoModelFromJson(Map<String, dynamic> json) {
  return ContactInfoModel(
    phone: json['phone'] as String,
    email: json['email'] as String,
    website: json['website'] as String,
    thirdPartyUrl: json['thirdPartyUrl'] as String,
  );
}

Map<String, dynamic> _$ContactInfoModelToJson(ContactInfoModel instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'email': instance.email,
      'website': instance.website,
      'thirdPartyUrl': instance.thirdPartyUrl,
    };
