import 'package:json_annotation/json_annotation.dart';

part 'info_section.g.dart';

@JsonSerializable(explicitToJson: true)
class InfoSectionModel {
  @JsonKey(defaultValue: '')
  final String title;

  @JsonKey(defaultValue: '')
  final String photoUrl;

  @JsonKey(defaultValue: '')
  final String body;

  InfoSectionModel({
    required this.title,
    required this.photoUrl,
    required this.body,
  });

  factory InfoSectionModel.fromJson(Map<String, dynamic> json) =>
      _$InfoSectionModelFromJson(json);
  Map<String, dynamic> toJson() => _$InfoSectionModelToJson(this);

  @override
  String toString() {
    return 'title: $title, photoUrl: $photoUrl, body: $body';
  }

  @override
  bool operator ==(Object o) {
    return o is InfoSectionModel && o.toString() == toString();
  }

  @override
  int get hashCode => toString().hashCode;
}
