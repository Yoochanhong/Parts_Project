import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parts_project/link.dart';
import 'package:parts_project/url.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double magicWandRadians = 295 * math.pi / 180;
    double pinWheelHatRadians = 344 * math.pi / 180;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 180.0.h,
            left: 850.0.w,
            child: TextButton(
              onPressed: () {
                launchURL(chanhong);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                    (states) => Colors.transparent), //버튼 애니메이션 삭제
              ),
              child: Image(
                width: 200.0.w,
                height: 200.0.h,
                image: AssetImage('assets/head.png'),
              ),
            ),
          ),
          Positioned(
            top: 90.0.h,
            left: 835.0.w,
            child: TextButton(
              onPressed: () {
                launchURL(gyuha);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                    (states) => Colors.transparent), //버튼 애니메이션 삭제
              ),
              child: Transform.rotate(
                angle: pinWheelHatRadians,
                child: Image(
                  width: 160.0.w,
                  height: 160.0.h,
                  image: AssetImage('assets/pinwheelHat.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 600.0.w,
            top: 300.0.h,
            child: TextButton(
              onPressed: () {
                launchURL(huibeom);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                    (states) => Colors.transparent), //버튼 애니메이션 삭제
              ),
              child: Image(
                width: 200.0.w,
                height: 200.0.h,
                image: AssetImage('assets/leftarm.png'),
              ),
            ),
          ),
          Positioned(
            right: 600.0.w,
            top: 300.0.h,
            child: TextButton(
              onPressed: () {
                launchURL(sanggu);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                    (states) => Colors.transparent), //버튼 애니메이션 삭제
              ),
              child: Image(
                width: 200.0.w,
                height: 200.0.h,
                image: AssetImage('assets/rightarm.png'),
              ),
            ),
          ),
          Positioned(
            left: 550.0.w,
            top: 345.0.h,
            child: TextButton(
              onPressed: () {
                launchURL(haeun);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent), //버튼 애니메이션 삭제
              ),
              child: Transform.rotate(
                angle: magicWandRadians,
                child: Image(
                  width: 150.0.w,
                  height: 150.0.h,
                  image: AssetImage('assets/magicWand.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 600.0.w,
            bottom: 180.0.h,
            child: TextButton(
              onPressed: () {
                launchURL(yeonu);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent), //버튼 애니메이션 삭제
              ),
              child: Image(
                width: 270.0.w,
                height: 300.0.h,
                image: AssetImage('assets/messiLeftLeg.png'),
              ),
            ),
          ),
          Positioned(
            left: 600.0.w,
            top: 300.0.h,
            child: TextButton(
              onPressed: () {
                launchURL(sehyun);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent), //버튼 애니메이션 삭제
              ),
              child: Image(
                width: 300.0.w,
                height: 300.0.h,
                image: AssetImage('assets/body.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
