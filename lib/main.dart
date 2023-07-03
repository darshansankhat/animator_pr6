import 'package:animator_pr6/bmi_calculator/view/home_screen.dart';
import 'package:animator_pr6/bmi_calculator/view/result_screen.dart';
import 'package:animator_pr6/bmi_calculator/view/splash/splash_screen.dart';
import 'package:animator_pr6/choice_screen.dart';
import 'package:animator_pr6/galaxy_planets/view/planets_home.dart';
import 'package:animator_pr6/galaxy_planets/view/planets_info.dart';
import 'package:animator_pr6/galaxy_planets/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main()
{
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "choice",
        routes: {
          "/":(context) => HomeScreen(),
          "choice":(context) => ChoiceScreen(),
          "splash":(context) => SplashScreen(),
          "result":(context) => ResultScreen(),
          "p_splash":(context) => PlanetsSplash(),
          "p_home":(context) => PlanetsHome(),
          "p_info":(context) => PlanetsInfoScreen(),
        },
      ),
    ),
  );
}