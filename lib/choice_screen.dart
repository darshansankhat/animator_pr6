import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ChoiceScreen extends StatefulWidget {
  const ChoiceScreen({Key? key}) : super(key: key);

  @override
  State<ChoiceScreen> createState() => _ChoiceScreenState();
}

class _ChoiceScreenState extends State<ChoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Get.toNamed("splash");
                },
                child: Text("BMI Calculator",style: TextStyle(fontSize: 25),),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed("p_splash");
                },
                child: Text("Galaxy Planets",style: TextStyle(fontSize: 25),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
