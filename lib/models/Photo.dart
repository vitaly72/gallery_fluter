import 'package:gallery_fluter/models/Urls.dart';

class Photo {
  String id;
  String? description;
  String? altDescription;
  String? color;
  Urls? urls;

  Photo(
      {required this.id, this.description, this.altDescription, this.color, this.urls});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      id: json['id'] as String,
      description: json['description'] as String?,
      altDescription: json['alt_description'] as String?,
      color: json['color'] as String?,
      urls: json['urls'] != null ? Urls.fromJson(json['urls']) : null,
    );
  }
}
