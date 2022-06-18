import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:testui_interview/screens/dashboard/components/order.dart';
import 'package:testui_interview/screens/dashboard/components/track_package.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final pageController = PageController();
  var initialPage = 0;
  void switchPage() {
    setState(() {
      initialPage = 1;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    var inPages = [
      Order(
        switchPage: switchPage
      ),
      const TrackPage()
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 44.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          'assets/images/human_biker.png',
                          fit: BoxFit.cover,
                        )),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(241, 246, 251, 1),
                          borderRadius: BorderRadius.circular(12.r)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Lottie.asset(
                            'assets/json/lottie1.json',
                            height: 30,

                          )),
                    )
                  ]),
            ),
            SizedBox(
              height: 9.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Text("Hello Good Morning!",
                  style:
                      Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith( fontWeight: FontWeight.w700)),
            ),
            SizedBox(
              height: 40.h,
            ),
            inPages[initialPage],
          ]),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80.h,
        child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: const Color.fromRGBO(241, 246, 251, 1),
            elevation: 0,
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                  icon: Lottie.asset(
                    'assets/json/lottie2.json',
                    width: 19.w,
                    height: 35.h,
                    fit: BoxFit.cover,repeat: false,
                  
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Lottie.asset(
                    fit: BoxFit.cover,repeat: false,
                    'assets/json/lottie3.json', width: 19.w,
                    height: 35.h), label: ''),
              BottomNavigationBarItem(
                  icon: Lottie.asset('assets/json/lottie4.json', width: 19.w, height: 35.h, fit: BoxFit.cover,
                    repeat: false,
                  ), label: ''),
              BottomNavigationBarItem(
                  icon: Lottie.asset('assets/json/lottie5.json', width: 19.w, height: 35.h, fit: BoxFit.cover,
                    repeat: false,
                  ), label: '')
            ]),
      ),
    );
  }
}
