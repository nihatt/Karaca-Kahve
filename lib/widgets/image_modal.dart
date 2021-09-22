import 'package:flutter/material.dart';

class ImageDialog extends StatelessWidget {
  final String source;

  const ImageDialog(this.source);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 400,
        height: 400,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(source), fit: BoxFit.cover)),
      ),
    );
  }
}
