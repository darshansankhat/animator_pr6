import 'package:animator_pr6/galaxy_planets/controller/planets_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class PlanetsInfoScreen extends StatefulWidget {
  const PlanetsInfoScreen({Key? key}) : super(key: key);

  @override
  State<PlanetsInfoScreen> createState() => _PlanetsInfoScreenState();
}

class _PlanetsInfoScreenState extends State<PlanetsInfoScreen> {

  PlanetsController controller = Get.put(PlanetsController());

  @override
  Widget build(BuildContext context) {

    int index = ModalRoute.of(context)!.settings.arguments as int;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2D383A),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(height: 13.h,),
                Stack(
                  alignment: Alignment(0,-6),
                  children: [
                    Container(
                      height: 30.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlue,
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 13.h,),
                          Text("${controller.planetsList[index].name}",style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold),),
                          Text("Milkyway Galaxy",style: TextStyle(fontSize: 18,color: Colors.white60),),
                          SizedBox(height: 3.h,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 70),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_on_outlined,color: Colors.black,size: 25,),
                                Text("${controller.planetsList[index].sunDistance}",style: TextStyle(fontSize: 18,color: Colors.white),),
                                Spacer(),
                                Icon(Icons.sync_alt,size: 25,color: Colors.black,),
                                Text("${controller.planetsList[index].gravity}",style: TextStyle(fontSize: 18,color: Colors.white),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset("${controller.planetsList[index].img}",height: 25.h,width: 70.w,)
                  ],
                ),
                SizedBox(height: 3.h,),
                Text("OVERVIEW",style: TextStyle(fontSize: 25,color: Colors.white),),
                SizedBox(height: 5.h,),
                Text("${controller.planetsList[index].data}",style: TextStyle(fontSize: 18,color: Colors.white),)
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 8.h,
          width: 100.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.blue,
              ]
            ),
          ),
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,size: 30,),
                  Text(
                    "BACK",style: TextStyle(fontSize: 25,color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
