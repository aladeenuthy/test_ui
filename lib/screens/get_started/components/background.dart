import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants.dart';
class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: double.infinity,
        width: double.infinity,
        color:  AppColors.mainYellow,
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