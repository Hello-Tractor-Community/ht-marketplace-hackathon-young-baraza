import 'package:flutter/material.dart';

Widget commonbutton(
    {required String name,
    required Function onTap,
    required double width,
    required double heignt}) {
  return SizedBox(
    width: width,
    height: heignt,
    child: TextButton(
      onPressed: () {
        onTap();
      },
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        backgroundColor: const Color(0xff004b23),
      ),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 15,
          color: Color(0xfff5f5f5),
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
