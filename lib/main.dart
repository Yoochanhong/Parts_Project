import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parts_project/link.dart';
import 'package:parts_project/url.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (context, child) {
        return const MaterialApp(
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
    double shieldRadians = 30 * math.pi / 180;
    double ironManRightLegRadians = 358 * math.pi / 180;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 100.0.h,
            left: 850.0.w,
            child: TextButton(
              onPressed: () {
                launchURL(juwon);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                    (states) => Colors.transparent), //버튼 애니메이션 삭제
              ),
              child: Image(
                width: 200.0.w,
                height: 200.0.h,
                image: const AssetImage('assets/head.png'),
              ),
            ),
          ),
          Positioned(
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
                  image: const AssetImage('assets/pinwheelHat.png'),
                ),
              ),
            ),
          ), Positioned(
            right: 800.0.w,
            bottom: 90.0.h,
            child: TextButton(
              onPressed: () {
                launchURL(geunwoo);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent), //버튼 애니메이션 삭제
              ),
              child: Transform.rotate(
                angle: ironManRightLegRadians,
                child: Image(
                  width: 90.0.w,
                  height: 430.0.h,
                  image: const AssetImage('assets/IronManRightLeg.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 810.0.w,
            bottom: 90.0.h,
            child: TextButton(
              onPressed: () {
                launchURL(yeonu);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent), //버튼 애니메이션 삭제
              ),
              child: Image(
                width: 120.0.w,
                height: 400.0.h,
                image: const AssetImage('assets/messiLeftLeg.png'),
              ),
            ),
          ),
          Positioned(
            left: 700.0.w,
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
                width: 500.0.w,
                height: 300.0.h,
                image: const AssetImage('assets/body.png'),
              ),
            ),
          ),
          Positioned(
            left: 570.0.w,
            top: 290.0.h,
            child: TextButton(
              onPressed: () {
                launchURL(huibeom);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                    (states) => Colors.transparent), //버튼 애니메이션 삭제
              ),
              child: Image(
                width: 250.0.w,
                height: 250.0.h,
                image: const AssetImage('assets/leftarm.png'),
              ),
            ),
          ),
          Positioned(
            left: 590.0.w,
            top: 373.0.h,
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
                  width: 80.0.w,
                  height: 160.0.h,
                  image: const AssetImage('assets/magicWand.png'),
                ),
              ),
            ),
          ),
          Positioned(
            right: 570.0.w,
            top: 290.0.h,
            child: TextButton(
              onPressed: () {
                launchURL(sanggu);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                    (states) => Colors.transparent), //버튼 애니메이션 삭제
              ),
              child: Image(
                width: 250.0.w,
                height: 250.0.h,
                image: const AssetImage('assets/rightarm.png'),
              ),
            ),
          ),
          Positioned(
            right: 570.0.w,
            top: 393.0.h,
            child: TextButton(
              onPressed: () {
                launchURL(jiho);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                    (states) => Colors.transparent), //버튼 애니메이션 삭제
              ),
              child: Transform.rotate(
                angle: shieldRadians,
                child: Image(
                  width: 170.0.w,
                  height: 200.0.h,
                  image: const AssetImage('assets/shield.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 900.0.w,
            top: 350.0.h,
            child: TextButton(
              onPressed: () {
                launchURL(junsu);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                    (states) => Colors.transparent), //버튼 애니메이션 삭제
              ),
              child: Image(
                fit: BoxFit.cover,
                width: 80.0.w,
                height: 80.0.h,
                image: const AssetImage('assets/heart.png'),
              ),
            ),
          ),
          Positioned(
            right: 520.0.w,
            bottom: 100.0.h,
            child: TextButton(
              onPressed: () {
                launchURL(seunghoon);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent), //버튼 애니메이션 삭제
              ),
              child: Image(
                width: 200.0.w,
                height: 260.0.h,
                image: const AssetImage('assets/android.png'),
              ),
            ),
          ),
          Positioned(
            left: 300.0.w,
            top: 50.0.h,
            child: TextButton(
              onPressed: () {
                launchURL(seungjae);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent), //버튼 애니메이션 삭제
              ),
              child: Image(
                width: 200.0.w,
                height: 200.0.h,
                image: const AssetImage('assets/swift.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
