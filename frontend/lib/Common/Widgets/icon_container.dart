import 'package:flutter/material.dart';

Widget iconContainer({
  required double width,
  required String image,
}) {
  return Container(
    width: width,
    decoration: BoxDecoration(
      color: const Color(0xff004600),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
      child: Image(
        image: AssetImage(image),
        width: 20,
      ),
    ),
  );
}
