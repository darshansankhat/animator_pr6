import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 5),() {
      Get.offAndToNamed("/");
    },);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 12.h,
                width: 25.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: Icon(Icons.volunteer_activism,size: 7.h,color: Colors.redAccent,),
              ),
              SizedBox(height: 2.h,),
              Text("BMI CALCULATOR",style: TextStyle(fontSize: 25,color: Colors.white),),
              SizedBox(height: 35.h,),
              CircularProgressIndicator(color: Colors.redAccent,),
              SizedBox(height: 1.h,),
              Text("Check your BMI",style: TextStyle(fontSize: 18,color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}
