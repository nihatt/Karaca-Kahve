// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

String curID = "";

class CategoriesScreen extends StatelessWidget {
  final String title;
  final String imgUrl;
  final String id;

  const CategoriesScreen(
    this.title,
    this.imgUrl,
    this.id,
  );

  @override
  Widget build(BuildContext context) {
    void idChange() {}
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                imgUrl,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(title)
      ],
    );
  }
}
