import 'package:json_annotation/json_annotation.dart';

part 'admin_user.g.dart';

@JsonSerializable(explicitToJson: true)
class AdminUserModel {
  final String uid;
  final String email;
  final String name;

  // adminUid is key, clinic uid list is value
  final Map<String, List<String>> admins;

  AdminUserModel({
    required this.uid,
    required this.email,
    required this.name,
    required this.admins,
  });

  factory AdminUserModel.fromJson(Map<String, dynamic> json) =>
      _$AdminUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$AdminUserModelToJson(this);
}
