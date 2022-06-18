import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:testui_interview/screens/dashboard/dashboard.dart';
import 'package:testui_interview/screens/get_started/components/background.dart';
import 'package:testui_interview/screens/get_started/components/ellipse.dart';
import 'package:testui_interview/screens/get_started/components/page_view_item.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const Background(),
        const Ellipse(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(
                height: 148.h,
              ),
              SizedBox(
                height: 425.h,
                child: PageView(controller: pageController, children: const [
                  PageViewItem(),
                  PageViewItem(),
                  PageViewItem(),
                  PageViewItem()
                ]),
              ),
              Center(
                child: SmoothPageIndicator(
                    controller: pageController, // PageController
                    count: 4,
                    effect: const JumpingDotEffect(
                      dotColor: Colors.white,
                      activeDotColor: Color.fromRGBO(2, 19, 30, 1),
                      dotWidth: 6,
                      dotHeight: 6,
                    ), // your preferred effect
                    onDotClicked: (index) {}),
              ),
              SizedBox(height: 48.h),
              TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: 16.h, horizontal: 10.w),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(52)),
                      backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
                      fixedSize: Size(double.infinity, 70.h)),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const DashBoard()));
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/images/google_logo.png',
                          fit: BoxFit.contain,
                          height: 20,
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Text(
                        "Login with Google",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: Colors.white),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                    ],
                  )),
              SizedBox(height: 48.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have any account?",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: const Color.fromRGBO(150, 130, 61, 1),
                          fontWeight: FontWeight.w600)),
                  const SizedBox(
                    width: 5,
                  ),
                  Text("Signup",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: const Color.fromRGBO(3, 21, 34, 1),
                          ))
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
