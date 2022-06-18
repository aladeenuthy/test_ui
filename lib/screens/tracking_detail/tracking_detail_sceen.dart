import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testui_interview/screens/tracking_detail/components/map_view.dart';

import 'components/draggable_content.dart';

class TrackingDetailScreen extends StatefulWidget {
  const TrackingDetailScreen({super.key});

  @override
  State<TrackingDetailScreen> createState() => _TrackingDetailScreenState();
}

class _TrackingDetailScreenState extends State<TrackingDetailScreen> {
  final controller = DraggableScrollableController();
  var blur = false;
  @override
  void initState() {
    
    super.initState();
    controller.addListener(() {
      if (controller.pixels > ScreenUtil.defaultSize.height * 0.5 && !blur) {
        setState(() {
          blur = true;
        });
        return;
      }
      if (controller.pixels < ScreenUtil.defaultSize.height * 0.5 && blur) {
        setState(() {
          blur = false;
        });
        return;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        MainBody(
          blur: blur,
        ),
        DraggableScrollableSheet(
          controller: controller,
          minChildSize: 0.24.h,
          initialChildSize: 0.24.h,
          maxChildSize: 0.85,
          builder: (_, scrollController) {
            return DraggableContent(
              scrollController: scrollController,
            );
          },
        )
      ]),
    );
  }
}

class MainBody extends StatelessWidget {
  final bool blur;
  const MainBody({Key? key, required this.blur}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const MapView(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 39.86.w),
          child: Column(
            children: [
              SizedBox(
                height: 49.h,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                    color: const Color.fromRGBO(59, 74, 102, 1),
                  ),
                  const Spacer(flex: 1,),
                  Text(
                    "Tracking Details",
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(9, 44, 76, 1)),
                  ),
                  const Spacer(flex: 2,),
                ],
              ),
              SizedBox(
                height: 49.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.h),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 211, 55, 1),
                    borderRadius: BorderRadius.circular(46)),
                child: Container(
                  alignment: Alignment.center,
                  height: 88.h,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color.fromRGBO(5, 31, 50, 1)),
                      borderRadius: BorderRadius.circular(28)),
                  child: Text(
                    "SCP6653728497",
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(5, 31, 50, 1)),
                  ),
                ),
              )
            ],
          ),
        ),
        if (blur)
          Container(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),
              ),
            ),
          )
      ],
    );
  }
}
