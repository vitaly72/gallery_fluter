import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/Photo.dart';
import '../services/RestApi.dart';
import '../widgets/PhotoListWidget.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder<List<Photo>>(
        future: RestApi.fetchPhoto(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? PhotoListWidget(photo: snapshot.data ?? List.empty())
              : const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
