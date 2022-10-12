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
          child: Column(
            children: [
              Image(
                width: 800.0.w,
                height: 300.0.h,
                image: AssetImage('assets/head.png'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    width: 1.0.w,
                    height: 1.0.h,
                    image: AssetImage('backgroung.png'),
                  ),
                  TextButton(
                    onPressed: () {
                    },
                    child: Image(
                      width: 500.0.w,
                      height: 300.0.h,
                      image: AssetImage('assets/rightarm.png'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Image(
                      width: 500.0.w,
                      height: 300.0.h,
                      image: AssetImage('assets/leftleg.png'),
                    ),
                  ),
                  Image(
                    width: 1.0.w,
                    height: 1.0.h,
                    image: AssetImage('assets/backgroung.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
