import 'package:flutter/foundation.dart';

class DisplaySectionModel {
  final String title;
  final String body;
  final String photoUrl;
  DisplaySectionModel({
    @required this.title,
    @required this.body,
    @required this.photoUrl,
  });
  static DisplaySectionModel fromMap(Map<String, dynamic> map) {
    return DisplaySectionModel(
      title: map['title'] ?? '',
      body: map['body'] ?? '',
      photoUrl: map['photoUrl'],
    );
  }
}
