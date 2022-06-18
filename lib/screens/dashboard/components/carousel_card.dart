import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 18.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.r),
          color: const Color.fromRGBO(241, 246, 252, 1)),
      child: Image.asset(
        'assets/images/bike.png',
      ),
    );
  }
}
