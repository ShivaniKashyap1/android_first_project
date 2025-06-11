import 'package:flutter/material.dart';

import '../../utils/screen_colors.dart';

class HorizontalRectangleBox extends StatelessWidget {
  final String image;

  const HorizontalRectangleBox({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.21,
      width: MediaQuery.of(context).size.width * 9,
      child: Card(
        color: Colors.blue,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(image, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
