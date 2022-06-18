import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromRGBO(255, 211, 55, 1),
      ),
      Positioned(
        right: 10.w,
        child: Image.asset(
          'assets/images/grouped_line.png',
          
        ),
      ),
    ]);
  }
}