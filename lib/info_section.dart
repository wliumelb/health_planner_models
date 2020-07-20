import 'package:flutter/foundation.dart';

class InfoSectionModel {
  final String title;
  final String photoUrl;
  final List<String> paragraphs;
  InfoSectionModel({
    @required this.title,
    this.photoUrl,
    @required this.paragraphs,
  });
  static InfoSectionModel fromMap(Map<String, dynamic> map) {
    return InfoSectionModel(
      title: map['title'] ?? '',
      photoUrl: map['photoUrl'], // could be null
      paragraphs: List<String>.from(map['paragraphs' ?? []]),
    );
  }
}
