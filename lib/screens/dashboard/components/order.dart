import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:testui_interview/screens/dashboard/components/carousel_card.dart';
import '../../../utils/constants.dart';

class Order extends StatefulWidget {
  final Function switchPage;
  const Order({super.key, required this.switchPage});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: CarouselSlider.builder(
            options: CarouselOptions(
              height: 265.h,
              disableCenter: false,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              viewportFraction: 0.7,
              enableInfiniteScroll: false,
              initialPage: 0,
              padEnds: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            itemCount: 6,
            itemBuilder: (_, index, __) => CarouselCard(
              index: index,
              currentIndex: _currentIndex,
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        Center(
          child: SmoothPageIndicator(
              controller:
                  PageController(initialPage: _currentIndex), // PageController
              count: 6,
              effect: JumpingDotEffect(
                activeDotColor: AppColors.dotColor,
                dotWidth: 6.w,
                dotHeight: 6.h,
              ), // your preferred effect
              onDotClicked: (index) {}),
        ),
        SizedBox(
          height: 25.h,
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            height: 109.h,
            color: AppColors.mainYellow,
            child: Row(children: [
              Flexible(
                child: Text(
                  'Gotten your E-bike yet?',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyishYellow),
                ),
              ),
              SizedBox(
                width: 27.w,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 29.w, vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(52.r)),
                    backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                  onPressed: () {
                    widget.switchPage();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Orders",
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontFamily: GoogleFonts.lato().fontFamily,
                              color: Colors.white,
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
                  ))
            ])),
        Container(
          padding: EdgeInsets.only(right: 48.w),
          child: Row(children: [
          Image.asset(
              'assets/images/moving_bike.gif',
              height: 81.h,
              width: 161.w,
            ),
            Flexible(
              child: Text('You too can join our Elite Squad of E-bikers ',
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(66, 66, 66, 1),
                      )),
            )
          ]),
        )
      ],
    );
  }
}
