// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminUserModel _$AdminUserModelFromJson(Map<String, dynamic> json) {
  return AdminUserModel(
    uid: json['uid'] as String,
    email: json['email'] as String,
    isTop: json['isTop'] as bool,
    name: json['name'] as String,
    adminList:
        (json['adminList'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$AdminUserModelToJson(AdminUserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'name': instance.name,
      'adminList': instance.adminList,
      'isTop': instance.isTop,
    };
