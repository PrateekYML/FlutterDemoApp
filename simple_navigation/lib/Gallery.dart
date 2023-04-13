import 'dart:math';
import 'package:flutter/material.dart';
import 'data/model/GalleryItem.dart';

class Gallery extends StatelessWidget {
  Gallery({Key? key}) : super(key: key);

  final List<String> imgUrls = [
    "asset/images/img_1.jpg",
    "asset/images/img_2.jfif",
    "asset/images/img_3.webp",
    "asset/images/img_4.jfif",
    "asset/images/img_5.jfif",
    "asset/images/img_6.jpg",
    "asset/images/img_7.webp",
    "asset/images/img_9.jfif",
  ];

  final List<String> descriptions = [
    "First Desc",
    "Second desc",
    "Third desc",
    "Fourth desc",
    "Fifth desc",
    "Sixth desc",
    "Seventh desc",
    "Eighth desc"
  ];

  final List<String> imgNames = [
    "First",
    "Second",
    "Third",
    "Fourth",
    "Fifth",
    "Sixth",
    "Seventh",
    "Eighth"
  ];

  final List galleryItems = [];
  final int numberOfTiles = 21;

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < numberOfTiles; i++) {
      Random random = new Random();
      int chosenIndex = random.nextInt(7);
      galleryItems.add(GalleryItem(
          name: imgNames[chosenIndex],
          description: descriptions[chosenIndex],
          imageUrl: imgUrls[chosenIndex]));
    }

    return GridView.builder(
        padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
        itemCount: galleryItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 4, crossAxisSpacing: 4),
        itemBuilder: (context, index) {
          GalleryItem item = galleryItems[index];

          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>
                            GalleryItemInfo(galleryItem: item)));
              },
              child: Image.asset(item.imageUrl,
                  width: 50, height: 50, fit: BoxFit.cover));
        });
  }
}

class GalleryItemInfo extends StatelessWidget {
  final GalleryItem galleryItem;

  const GalleryItemInfo({required this.galleryItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Hero(
          tag: galleryItem.imageUrl,
          child: Center(
            child: Image.asset(
              galleryItem.imageUrl,
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),
          )),
    );
  }
}