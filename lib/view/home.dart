// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nuqta/view/aichat.dart';
import 'package:nuqta/view/course.dart';
import 'package:nuqta/view/p1.dart';
import 'package:nuqta/view/pay.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 60, 92, 255),
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
          index: 0,
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 60, 92, 255),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ياهلا, خالصة",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 248, 245),
                        fontFamily: 'cairo',
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text("لنبدأ التعلم",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 248, 245),
                          fontFamily: 'cairo',
                          fontSize: 16,
                          fontWeight: FontWeight.w400))
                ],
              ),
              Container(
                height: 55,
                width: 55,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/icon2.png"),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            color: Color.fromARGB(255, 31, 31, 57),
          ),
          Container(
            width: double.infinity,
            height: 100,
            color: Color.fromARGB(255, 60, 92, 255),
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(20),
                height: 115,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(71, 255, 254, 254),
                          blurRadius: 2,
                          spreadRadius: .6,
                          offset: Offset(0, 3))
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 46, 47, 65)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20, top: 20),
                          child: Text(
                            "دوراتي",
                            style: TextStyle(
                                fontFamily: 'cairo',
                                fontSize: 16,
                                color: Color.fromARGB(255, 66, 87, 192)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 26, top: 20, bottom: 7),
                          child: Text(
                            "ما تعلمته اليوم",
                            style: TextStyle(
                                fontFamily: 'cairo',
                                fontSize: 18,
                                color: Color.fromARGB(255, 184, 185, 206)),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30, bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "60min/",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 186, 187, 208),
                                    fontSize: 14,
                                    fontFamily: 'cairo'),
                              ),
                              Text(
                                "46min",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'cairo',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 18),
                          child: LinearPercentIndicator(
                            width: Get.width - 55,
                            lineHeight: 7.0,
                            percent: 0.7667,
                            backgroundColor:
                                const Color.fromARGB(255, 235, 236, 255),
                            barRadius: Radius.circular(20),
                            animateFromLastPercent: true,
                            clipLinearGradient: true,
                            linearGradient: LinearGradient(colors: [
                              const Color.fromARGB(255, 234, 235, 255),
                              const Color.fromARGB(255, 247, 92, 29),
                              Color.fromARGB(255, 100, 54, 92)
                            ]),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                        height: 210,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: 10, right: 10, top: 20, bottom: 20),
                              width: 280,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 207, 236, 254),
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      alignment: Alignment.center,
                                      image: AssetImage("images/ico.png"))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 40, left: 20),
                                    child: Text(
                                      "حل الواجب الدراسي الخاص بك",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        shadows: [
                                          Shadow(
                                              color: Colors.white,
                                              blurRadius: 0,
                                              offset: Offset(2, 2))
                                        ],
                                        color: Color.fromARGB(255, 51, 43, 126),
                                        fontSize: 18,
                                        fontFamily: 'cairo',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(bottom: 20, left: 20),
                                    width: 80,
                                    height: 28,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color.fromARGB(
                                            255, 254, 105, 5)),
                                    child: Text(
                                      "شابه",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'cairo',
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 10, right: 5, top: 20, bottom: 20),
                              width: 280,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 207, 236, 254),
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      alignment: Alignment.center,
                                      scale: 2,
                                      image: AssetImage(
                                        "images/Asset 2.png",
                                      ))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 40, left: 20),
                                    child: Text(
                                      "حل الاختبارات التجريبية",
                                      style: TextStyle(
                                        shadows: [
                                          Shadow(
                                              color: Colors.white,
                                              blurRadius: 0,
                                              offset: Offset(2, 2))
                                        ],
                                        color: Color.fromARGB(255, 51, 33, 85),
                                        fontSize: 20,
                                        fontFamily: 'cairo',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(bottom: 20, left: 20),
                                    width: 80,
                                    height: 28,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color.fromARGB(
                                            255, 254, 105, 5)),
                                    child: Text(
                                      "شابه",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'cairo',
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                    Container(
                      height: 130,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(29, 255, 254, 254),
                                blurRadius: 2,
                                spreadRadius: .6,
                                offset: Offset(0, 3))
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 46, 47, 65)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(top: 9, left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "48",
                                      style: TextStyle(
                                          fontFamily: 'cairo',
                                          fontSize: 14,
                                          color: const Color.fromARGB(
                                              255, 146, 147, 166)),
                                    ),
                                    Text("/40",
                                        style: TextStyle(
                                            fontFamily: 'cairo',
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255))),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "درس الفيزياء",
                                      style: TextStyle(
                                          fontFamily: 'cairo',
                                          fontSize: 18,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 1,
                                    ),
                                    CircularPercentIndicator(
                                      radius: 13,
                                      animation: true,
                                      linearGradient: LinearGradient(colors: [
                                        Colors.white,
                                        Colors.pinkAccent,
                                        Colors.purple
                                      ]),
                                      percent: 0.7,
                                      animateFromLastPercent: true,
                                      lineWidth: 4,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 2, left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "24",
                                      style: TextStyle(
                                          fontFamily: 'cairo',
                                          fontSize: 14,
                                          color: const Color.fromARGB(
                                              255, 146, 147, 166)),
                                    ),
                                    Text("/6",
                                        style: TextStyle(
                                            fontFamily: 'cairo',
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255))),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "درس مادة اللغة العربية",
                                      style: TextStyle(
                                          fontFamily: 'cairo',
                                          fontSize: 18,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    CircularPercentIndicator(
                                      radius: 13,
                                      animation: true,
                                      linearGradient: LinearGradient(colors: [
                                        Colors.white,
                                        Colors.pinkAccent,
                                        Colors.purple
                                      ]),
                                      percent: 0.2,
                                      animateFromLastPercent: true,
                                      lineWidth: 4,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 2),
                            child: Text(
                              "المزيد",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 84, 118, 241)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 160,
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              scale: 2.8,
                              alignment: Alignment.centerRight,
                              image: AssetImage("images/Asset 1.png")),
                          color: const Color.fromARGB(255, 239, 224, 255),
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        margin: EdgeInsets.only(right: 140, top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "اللقاءات",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 60, 17, 109),
                                  fontSize: 28),
                            ),
                            Text(
                              "وجهاً لوجه لنتبادل تجارب التعلم",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 60, 17, 109),
                                  fontSize: 16),
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
        ],
      ),
    );
  }
}
