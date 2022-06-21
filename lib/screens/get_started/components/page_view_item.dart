import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants.dart';
class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/get_started_image.png", height: 216.h,),
        SizedBox(height: 70.h),
        Text('Welcome to E-Bikes', style: Theme.of(context).textTheme.bodyText1?.copyWith(
          fontSize: 24.sp,
                  color: const Color.fromRGBO(4, 28, 46, 1),
        )),
        SizedBox(height: 8.h),
        Text('Buying Electric bikes just got a lot easier, Try us today.' ,textAlign: TextAlign.center, style:
        Theme.of(context).textTheme.bodyText1?.copyWith(
          fontWeight: FontWeight.w400,
          color:  AppColors.greyishYellow
        )
    ),
        SizedBox(height: 20.h),
      ],
    );
  }
}