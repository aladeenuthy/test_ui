import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselCard extends StatelessWidget {
  final int index;
  final int currentIndex;
  const CarouselCard({super.key, required this.index, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 18.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: const Color.fromRGBO(241, 246, 252, 1)),
      child: ColorFiltered(
        colorFilter: index != currentIndex
            ? const ColorFilter.mode(
                Color.fromRGBO(241, 246, 251, 0.3), BlendMode.dstATop)
            : const ColorFilter.mode(
                Color.fromRGBO(241, 246, 251, 1), BlendMode.dstATop),
        child: Image.asset(
          'assets/images/bike.png',
        ),
      ),
    );
  }
}
