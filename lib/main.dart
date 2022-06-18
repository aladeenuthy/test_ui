import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testui_interview/screens/get_started/get_started_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(378, 813),
      builder:(_, __) =>  MaterialApp(
        
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
          textTheme: ThemeData.light().textTheme.copyWith(
            headline1:  TextStyle(fontSize: 18.sp),
            headline2:  TextStyle(fontSize: 16.sp),
            bodyText1:  TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600
            ),
            bodyText2: TextStyle(fontSize: 12.sp),
        
          ).apply(
            fontFamily: GoogleFonts.inter().fontFamily
          )
        ),
        home: const GetStartedScreen(),
      ),
    );
  }
}

