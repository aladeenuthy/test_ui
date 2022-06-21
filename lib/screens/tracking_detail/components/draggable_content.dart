import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants.dart';

class DraggableContent extends StatelessWidget {
  final ScrollController scrollController;
  const DraggableContent({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: SizedBox(
                width: 48.w,
                child: const Divider(
                  color: Color.fromRGBO(219, 226, 233, 1),
                  thickness: 2,
                )),
          ),
          SizedBox(
            height: 24.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Estimate arrives in",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: AppColors.listTileSubtitleColor,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    "2h 40m",
                    style: TextStyle(
                        color: AppColors.smallHeaderColor,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 3.w,
                    height: 3.h,
                    color: const Color.fromRGBO(32, 14, 50, 1),
                  ),
                  SizedBox(
                    width: 7.h,
                  ),
                  Container(
                    width: 3.w,
                    height: 3.h,
                    color: const Color.fromRGBO(32, 14, 50, 1),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: AppColors.mainYellow),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildCardItem("Sukabumi, Indonesia",
                    "No receipt : SCP6653728497", context),
                SizedBox(
                  height: 16.h,
                ),
                _buildCardItem("2,50 USD", "Postal fee", context),
                SizedBox(
                  height: 16.h,
                ),
                _buildCardItem("Bali, Indonesia", "Parcel, 24kg", context),
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Text(
            "History",
            style: TextStyle(
                color: AppColors.smallHeaderColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 24.h,
          ),
          Container(
            child: Stack(
              children: [
                Container(
                  color: const Color.fromRGBO(223, 230, 237, 1),
                  margin: EdgeInsets.only(left: 32.w, top: 12.h),
                  height: 300.h,
                  width: 3,
                ),
                Column(
                  children: [
                    buildTile("in Delivery", "Bali Indonesia", "00.00 PM",
                        AppColors.mainYellow, 'assets/images/bus.png', context),
                    SizedBox(
                      height: 32.h,
                    ),
                    buildTile(
                        "Transit - Sending City",
                        "Jakarta Indonesia",
                        "21.00 PM",
                        AppColors.lightGrey,
                        'assets/images/mail.png',
                        context),
                    SizedBox(
                      height: 32.h,
                    ),
                    buildTile(
                        "Send Form Sukabumi",
                        "Sukabumi Indonesia",
                        "19.00 PM",
                        AppColors.lightGrey,
                        'assets/images/box.png',
                        context),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

Widget _buildCardItem(String title, String subtitle, BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: Theme.of(context).textTheme.headline2?.copyWith(
            color: AppColors.smallHeaderColor, fontWeight: FontWeight.w600),
      ),
      SizedBox(
        height: 8.h,
      ),
      Text(
        subtitle,
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
            color: AppColors.greyishYellow, fontWeight: FontWeight.w400),
      ),
      SizedBox(
        height: 16.h,
      ),
      const Divider(
        color: Color.fromRGBO(237, 193, 39, 1),
        thickness: 2,
      )
    ],
  );
}

Widget buildTile(String title, String subtitle, String trailing,
    Color imageColor, String imageUrl, BuildContext context) {
  return ListTile(
    contentPadding: EdgeInsets.zero,
    leading: CircleAvatar(
      backgroundColor: imageColor,
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
    trailing: Text(
      trailing,
      style: Theme.of(context).textTheme.bodyText1?.copyWith(
          color: AppColors.listTileSubtitleColor, fontWeight: FontWeight.w400),
    ),
  );
}
