import 'dart:math';

import 'package:animator_pr6/galaxy_planets/controller/planets_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

class PlanetsHome extends StatefulWidget {
  const PlanetsHome({Key? key}) : super(key: key);

  @override
  State<PlanetsHome> createState() => _PlanetsHomeState();
}

class _PlanetsHomeState extends State<PlanetsHome>
    with SingleTickerProviderStateMixin {
  PlanetsController controller = Get.put(PlanetsController());
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 10));
    animationController!.repeat();
    animationController!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          title: Text(
            "GALAXY PLANETS",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 1.w,
            ),
          ],
        ),
        backgroundColor: Color(0xff2D383A),
        body: ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Get.toNamed("p_info", arguments: index);
                  },
                  child: planets(index));
            },
            itemCount: controller.planetsList.length),
      ),
    );
  }

  Widget planets(int index) {
    return Container(
      height: 27.h,
      width: 100.w,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 27.h,
                width: 70.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlue,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 90, top: 20, bottom: 40, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "${controller.planetsList[index].name}",
                            style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.more_vert_rounded,
                            size: 25,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Text(
                        "Milkyway Galaxy",
                        style: TextStyle(fontSize: 18, color: Colors.white60),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        width: 10.w,
                        height: 2,
                        color: Colors.deepPurple,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                          Text(
                            "    ${controller.planetsList[index].sunDistance}",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          Icon(
                            Icons.sync_alt,
                            size: 25,
                            color: Colors.black,
                          ),
                          Text(
                            "    ${controller.planetsList[index].gravity}",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment(-1.2, 0),
                child: AnimatedBuilder(
                      builder: (context, child) {
                        return Transform.rotate(
                          angle: animationController!.value * 2 * pi,
                          child: child,
                        );
                      },
                      animation: animationController!,
                  child: Image.asset(
                    "${controller.planetsList[index].img}",
                    height: 18.h,
                    width: 55.w,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
