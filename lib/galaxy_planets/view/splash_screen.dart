import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

class PlanetsSplash extends StatefulWidget {
  const PlanetsSplash({Key? key}) : super(key: key);

  @override
  State<PlanetsSplash> createState() => _PlanetsSplashState();
}

class _PlanetsSplashState extends State<PlanetsSplash> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5),() {
      Get.offAndToNamed("p_home");
    },);
    return SafeArea(
      child: Scaffold(
        body:Stack(
          children: [
            Container(
              height: 100.h,
              width: 100.w,
              child: Image.asset("assets/images/s.png",fit: BoxFit.cover,),
            ),
            Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
