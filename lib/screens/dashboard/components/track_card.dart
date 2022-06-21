import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testui_interview/screens/tracking_detail/tracking_detail_sceen.dart';

import '../../../utils/constants.dart';

class TrackCard extends StatelessWidget {
  const TrackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: AppColors.mainYellow),
      child: Stack(children: [
        Positioned(
          right: 10.w,
          child: Image.asset(
            'assets/images/grouped_line.png',
            height: 150.h,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 53.h,
            ),
            Text("Track Your Package",
                style: Theme.of(context).textTheme.headline1?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(3, 23, 37, 1))),
            SizedBox(
              height: 8.h,
            ),
            Text("Enter the receipt number that has been given by the officer",
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    
                    fontWeight: FontWeight.w400,
                    color: AppColors.greyishYellow)),
            SizedBox(
              height: 29.h,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromRGBO(5, 31, 50, 1)),
                  borderRadius: BorderRadius.circular(28)),
              child: Text(
                "Enter the receipt number",
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(3, 20, 32, 1)),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TextButton(
                style: TextButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 34.w, vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(52)),
                  backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const TrackingDetailScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Track now",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Colors.white,
                          fontFamily:GoogleFonts.lato().fontFamily
                          ),
                    ),
                    SizedBox(
                      width: 21.w,
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                )),
            SizedBox(
              height: 32.h,
            ),
          ]),
        )
      ]),
    );
  }
}
