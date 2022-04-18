import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/Photo.dart';

class RestApi {
  static Future<List<Photo>> fetchPhoto(http.Client client) async {
    final response = await http.get(Uri.parse(
        'https://api.unsplash.com/photos/?client_id=epOrPiATNY215yZLXGWAqlPNgOR01sjd2CPnMsMz4js&per_page=100'));

    return compute(parsePhotos, response.body);
  }

  static List<Photo> parsePhotos(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
  }
}
