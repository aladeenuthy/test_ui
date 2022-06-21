import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testui_interview/screens/dashboard/components/track_card.dart';

import '../../../utils/constants.dart';

class TrackPage extends StatelessWidget {
  const TrackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TrackCard(),
          SizedBox(
            height: 40.h,
          ),
          Text(
            "History",
            style: Theme.of(context).textTheme.headline2?.copyWith(
                color: AppColors.smallHeaderColor, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 16.h,
          ),
          _buildTile("SCP9374826473", "In the process", 'assets/images/bus.png',
              context),
          SizedBox(
            height: 24.h,
          ),
          _buildTile(
              "SCP6653728497", "In delivery", 'assets/images/box.png', context)
        ],
      ),
    );
  }
}

Widget _buildTile(
    String title, String subtitle, String imageUrl, BuildContext context) {
  return ListTile(
    contentPadding: EdgeInsets.zero,
    leading: CircleAvatar(
      backgroundColor: AppColors.lightGrey,
      radius: 30,
      child: Image.asset(imageUrl),
    ),
    title: Text(
      title,
      style: Theme.of(context).textTheme.bodyText1?.copyWith(
            color: AppColors.listTileTitleColor,
          ),
    ),
    subtitle: Text(
      subtitle,
      style: Theme.of(context).textTheme.bodyText1?.copyWith(
          color: AppColors.listTileSubtitleColor, fontWeight: FontWeight.w400),
    ),
    trailing: const Icon(
      Icons.arrow_forward_ios,
      color: AppColors.listTileTitleColor,
    ),
  );
}
