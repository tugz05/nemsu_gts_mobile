import 'dart:ffi';

import 'package:flutter/material.dart';

class ImageViewDesign extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;

  const ImageViewDesign({
    Key? key,
    required this.imagePath,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: width,
      height: height,
    );
  }
}
