import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Ellipse extends StatelessWidget {
  const Ellipse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 556.h,
              width: 270.w,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 206, 35, 1),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(202),
                      bottomRight: Radius.circular(202))));
  }
}