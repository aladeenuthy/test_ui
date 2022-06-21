import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: AppColors.lightGrey,
              image: DecorationImage(
                  image: AssetImage('assets/images/map.png'),
                  fit: BoxFit.cover)),
        ),
        Positioned(
            left: 39.86.w,
            top: (ScreenUtil.defaultSize.height * .5).h,
            child: Image.asset(
              'assets/images/map_line.png',
              width: 263.w,
            ))
      ],
    );
  }
}
