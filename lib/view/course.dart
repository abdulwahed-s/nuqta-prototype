// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nuqta/controller/homecontroller.dart';
import 'package:nuqta/view/aichat.dart';
import 'package:nuqta/view/home.dart';
import 'package:nuqta/view/p1.dart';
import 'package:nuqta/view/pay.dart';

class Course extends StatelessWidget {
  const Course({super.key});

  @override
  Widget build(BuildContext context) {
    Homecontroller control = Get.put(Homecontroller());
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color.fromARGB(255, 194, 226, 226),
          buttonBackgroundColor: const Color.fromARGB(255, 62, 89, 255),
          color: Color.fromARGB(255, 31, 31, 57),
          height: 75,
          onTap: (value) {
            switch (value) {
              case 0:
                {
                  Get.off(Home());
                }
              case 1:
                {
                  Get.off(Course());
                }
              case 2:
                {
                  Get.to(AiChat());
                }
              case 3:
                {
                  Get.off(P1());
                }
              case 4:
                {
                  Get.to(Pay());
                }
            }
          },
          index: 1,
          items: const <Widget>[
            Icon(
              Icons.home_filled,
              color: Color.fromARGB(255, 181, 205, 181),
            ),
            Icon(
              Icons.book,
              color: Color.fromARGB(255, 181, 205, 181),
            ),
            Icon(
              FluentIcons.brain_circuit_24_filled,
              color: Color.fromARGB(255, 181, 205, 181),
              size: 28,
            ),
            Icon(
              Icons.chat_bubble_rounded,
              color: Color.fromARGB(255, 181, 205, 181),
            ),
            Icon(Icons.attach_money_rounded,
                color: Color.fromARGB(255, 181, 205, 181), size: 34)
          ]),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 31, 31, 57),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "الكورسات",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "Cairo"),
              ),
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("images/icon2.png"),
                )),
              )
            ],
          ),
        ),
        body: Container(
          color: Color.fromARGB(255, 31, 31, 57),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: SearchBar(
                  leading: Icon(Iconsax.setting,
                      color: const Color.fromARGB(255, 182, 183, 204)),
                  trailing: <Widget>[
                    Icon(
                      Iconsax.search_favorite,
                      color: const Color.fromARGB(255, 182, 183, 204),
                    ),
                  ],
                  hintText: "ابحث عن مدرس معين",
                  hintStyle: MaterialStatePropertyAll(TextStyle(
                    color: Color.fromARGB(255, 182, 183, 204),
                    fontFamily: 'cairo',
                  )),
                  backgroundColor: MaterialStatePropertyAll(
                      const Color.fromARGB(255, 62, 63, 84)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10, top: 30),
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  controller: ScrollController(),
                  children: [
                    Stack(
                      children: [
                        Container(
                        
                          width: 170,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 207, 236, 254),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  alignment: Alignment.centerLeft,
                                  image: AssetImage("images/sv.png"),
                                  fit: BoxFit.contain)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 45),
                          width: 90,
                          height: 27,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)),
                              color: Color.fromARGB(255, 245, 250, 255)),
                          child: Text(
                            "لغات",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 102, 102, 207)),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 18),
                      child: Stack(
                        children: [
                          Container(
                            width: 170,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 239, 224, 255),
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    alignment: Alignment.centerLeft,
                                    image: AssetImage("images/sv2.png"),
                                    fit: BoxFit.contain)),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 45),
                            width: 90,
                            height: 27,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                color: Color.fromARGB(248, 242, 254, 255)),
                            child: Text(
                              "فنون",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 142, 121, 171)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                    margin: EdgeInsets.only(right: 18),
                      child: Stack(
                        children: [
                          Container(
                            width: 170,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 207, 236, 254),
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    alignment: Alignment.centerLeft,
                                    image: AssetImage("images/asstmay.png"),
                                    fit: BoxFit.contain)),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 45),
                            width: 90,
                            height: 27,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                color: Color.fromARGB(255, 245, 250, 255)),
                            child: Text(
                              "الحاسب",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 102, 102, 207)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(right: 12, bottom: 8),
                  child: Text(
                    "اختر المعلم المناسب",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'cairo', fontSize: 20),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GetBuilder(
                    init: Homecontroller(),
                    builder: (controller) => Material(
                      borderRadius: BorderRadius.circular(20),
                      color: control.sw1,
                      child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Color.fromARGB(255, 222, 164, 255),
                          onTap: () {
                            control.press();
                            control.colo(1);
                          },
                          child: Container(
                            width: 80,
                            height: 29,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "الكل",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'cairo',
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 253, 252, 255)),
                            ),
                          )),
                    ),
                  ),
                  GetBuilder(
                    init: Homecontroller(),
                    builder: (controller) => Material(
                      borderRadius: BorderRadius.circular(20),
                      color: control.sw2,
                      child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Color.fromARGB(255, 222, 164, 255),
                          onTap: () {
                            control.press();
                            control.colo(2);
                          },
                          child: Container(
                            width: 80,
                            height: 29,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "جديد",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'cairo',
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 253, 252, 255)),
                            ),
                          )),
                    ),
                  ),
                  GetBuilder(
                    init: Homecontroller(),
                    builder: (controller) => Material(
                      borderRadius: BorderRadius.circular(20),
                      color: control.sw3,
                      child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Color.fromARGB(255, 222, 164, 255),
                          onTap: () {
                            control.press();
                            control.colo(3);
                          },
                          child: Container(
                            width: 80,
                            height: 29,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "مشهور",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'cairo',
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 253, 252, 255)),
                            ),
                          )),
                    ),
                  ),
                  GetBuilder(
                    init: Homecontroller(),
                    builder: (controller) => Material(
                      borderRadius: BorderRadius.circular(20),
                      color: control.sw4,
                      child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Color.fromARGB(255, 222, 164, 255),
                          onTap: () {
                            control.press();
                            control.colo(4);
                          },
                          child: Container(
                            width: 80,
                            height: 29,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "اونلاين",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'cairo',
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 253, 252, 255)),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      height: 125,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 46, 47, 65),
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "معلمة مادة تقنية المعلومات",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "خالصة الجهوريه",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.person,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "1 ساعه ",
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 19),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "5 ريال",
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 60, 73, 160),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              height: 95,
                              width: 95,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 126, 169),
                                  borderRadius: BorderRadius.circular(10)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      height: 125,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 46, 47, 65),
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "معلم مادة الفيزياء",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "سالم محمد",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.person,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "5 ساعه ",
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 19),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "10 ريال",
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 60, 73, 160),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              height: 95,
                              width: 95,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 77, 64, 255),
                                  borderRadius: BorderRadius.circular(10)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      height: 125,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 46, 47, 65),
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  "معلم مادة الرياضيات البحتة",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "راشد حسين",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.person,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "2 ساعه ",
                                      style: TextStyle(
                                          color: Colors.orange, fontSize: 19),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "6 ريال",
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 60, 73, 160),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              height: 95,
                              width: 95,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 77, 64, 255),
                                  borderRadius: BorderRadius.circular(10)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
