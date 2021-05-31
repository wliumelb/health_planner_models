import 'package:json_annotation/json_annotation.dart';

part 'notification.g.dart';

@JsonSerializable(explicitToJson: true)
class NotificationModel {
  @JsonKey(defaultValue: '')
  final String title;

  @JsonKey(defaultValue: '')
  final String body;

  NotificationModel({
    required this.title,
    required this.body,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);

  @override
  String toString() {
    return 'title: $title, body: $body';
  }

  @override
  bool operator ==(Object o) {
    return o is NotificationModel && o.toString() == toString();
  }

  @override
  int get hashCode => toString().hashCode;
}
