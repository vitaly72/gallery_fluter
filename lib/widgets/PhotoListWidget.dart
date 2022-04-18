
import 'package:flutter/material.dart';

import '../models/Photo.dart';
import '../screens/DetailPage.dart';

class PhotoListWidget extends StatelessWidget {
  final List<Photo> photo;

  const PhotoListWidget({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: photo.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          String title = photo[index].description ?? "";

          return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailPage(
                      title: title,
                      color: photo[index].color ?? "#260c0c",
                      urlPhoto: photo[index].urls?.regular ?? "");
                }));
              },
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network(
                  photo[index].urls?.small ?? "",
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                elevation: 5,
                margin: const EdgeInsets.all(3),
              ));
        });
  }
}
