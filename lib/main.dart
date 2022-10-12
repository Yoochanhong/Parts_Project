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
    return Scaffold(
      body: Container(
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        launchURL(chanhong);
                      },
                      style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => Colors.transparent), //버튼 애니메이션 삭제
                      ),
                      child: Image(
                        width: 300.0.w,
                        height: 300.0.h,
                        image: AssetImage('assets/head.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 600.0.w,
                top: 300.0.h,
                child: TextButton(
                  onPressed: () {
                    launchURL(huibeom);
                  },
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
                left: 600.0.w,
                bottom: 250.0.h,
                child: TextButton(
                  onPressed: () {
                    launchURL(gyuha);
                  },
                  style: ButtonStyle(
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent), //버튼 애니메이션 삭제
                  ),
                  child: Image(
                    width: 200.0.w,
                    height: 200.0.h,
                    image: AssetImage('assets/leftleg.png'),
                  ),
                ),
              ),
              Image(
                width: 1.0.w,
                height: 1.0.h,
                image: AssetImage('assets/backgroung.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
