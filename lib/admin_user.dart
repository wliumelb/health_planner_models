import 'package:json_annotation/json_annotation.dart';

part 'admin_user.g.dart';

@JsonSerializable(explicitToJson: true)
class AdminUserModel {
  final String uid;
  final String email;
  final String name;
  // list of uids of admin users that can modify this admin; should include self and the top admin of the clinic
  final List<String> adminList;
  // a top admin could see other admins and modify other admins
  final bool isTop;

  AdminUserModel({
    required this.uid,
    required this.email,
    required this.isTop,
    required this.name,
    required this.adminList,
  });

  factory AdminUserModel.fromJson(Map<String, dynamic> json) =>
      _$AdminUserModelFromJson(json);
  Map<String, dynamic> toJson() => _$AdminUserModelToJson(this);
}
