// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nuqta/view/aichat.dart';
import 'package:nuqta/view/course.dart';
import 'package:nuqta/view/home.dart';
import 'package:nuqta/view/pay.dart';

bool isnotf = false;

class P1 extends StatelessWidget {
  const P1({super.key});

  @override
  Widget build(BuildContext context) {
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
          index: 3,
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
        title: Text(
          "قسم الاخطارات",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: "Cairo"),
        ),
        backgroundColor: Color.fromARGB(255, 31, 31, 57),
      ),
      body: Container(
        color: Color.fromARGB(255, 31, 31, 57),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
            ),
            GNav(
            selectedIndex: 1,
                padding: EdgeInsets.all(18),
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                color: Colors.white,
                backgroundColor: Color.fromARGB(255, 31, 31, 57),
                tabBackgroundColor: Colors.white,
                tabs: [
                  GButton(
                    icon: Icons.notifications,
                    iconColor: isnotf
                        ? const Color.fromARGB(255, 255, 17, 0)
                        : Colors.white,
                    text: "الاشعارات",
                  ),
                  GButton(
                    icon: Icons.chat,
                    text: "الدردشه",
                  )
                ]),
            Container(
              padding: EdgeInsets.only(top: 10),
            ),
            Expanded(
                child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7 ,vertical: 5),
                  height: 150,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 46, 47, 65),
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "3:32 م",
                                style: TextStyle(
                                    fontFamily: 'Cairo',
                                    color: const Color.fromARGB(
                                        255, 187, 187, 211),
                                    fontSize: 16),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 110),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        "محمد راشد",
                                        style: TextStyle(
                                            fontFamily: 'Cairo',
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )),
                                  Text(
                                    "متصل",
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        color: const Color.fromARGB(
                                            255, 187, 187, 211),
                                        fontSize: 14),
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10, top: 20),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(14)),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 20, top: 10),
                          width: 300,
                          child: Text(
                            "مبروك أخيراََ خلصت الدرس الأول\nانصحك تثابر على العمل الجيد!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Cairo'),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                  height: 330,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 46, 47, 65),
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "3:32 م",
                                style: TextStyle(
                                    fontFamily: 'Cairo',
                                    color: const Color.fromARGB(
                                        255, 187, 187, 211),
                                    fontSize: 16),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 110),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        "ساره خميس",
                                        style: TextStyle(
                                            fontFamily: 'Cairo',
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )),
                                  Text(
                                    "متصل",
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        color: const Color.fromARGB(
                                            255, 187, 187, 211),
                                        fontSize: 14),
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10, top: 20),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20)),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 20, top: 10),
                          width: 300,
                          child: Text(
                            "عندي واجب في مادة اللغة العربية تقدر تفهمني كيف احل بعض الاسئلة؟",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Cairo'),
                          ))
                          ,Container(
                          height: 170,
                          margin: EdgeInsets.symmetric(horizontal: 15 ,vertical: 7),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red
                          ),
                          )
                    ],
                  ),
                ), Container(
                  margin: EdgeInsets.symmetric(horizontal: 7 ,vertical: 5),
                  height: 150,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 46, 47, 65),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                "9:15 م",
                                style: TextStyle(
                                    fontFamily: 'Cairo',
                                    color: const Color.fromARGB(
                                        255, 187, 187, 211),
                                    fontSize: 16),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 110),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(top: 20),
                                      child: Text(
                                        "سالم سعيد",
                                        style: TextStyle(
                                            fontFamily: 'Cairo',
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )),
                                  Text(
                                    "متصل",
                                    style: TextStyle(
                                        fontFamily: 'Cairo',
                                        color: const Color.fromARGB(
                                            255, 187, 187, 211),
                                        fontSize: 14),
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10, top: 20),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20)),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 20, top: 10),
                          width: 300,
                          child: Text(
                            "هل ممكن نجتمع اونلاين بقسم البثوث ساعه؟ 8 بخصوص",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Cairo'),
                          ))
                    ],
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
