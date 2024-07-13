// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nuqta/controller/onbording_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onbo extends StatelessWidget {
  const Onbo({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBordingContorller());
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 31, 31, 57),
        child: Stack(
          children: [
            PageView(
              controller: controller.pagecontroller,
              onPageChanged: controller.updatepageindacter,
              children: [
                Column(
                  children: [
                    Image(
                        width:   MediaQuery.of(context).size.width * 0.8,
                        height:   MediaQuery.of(context).size.height * 0.6,
                        image: AssetImage("images/f1.png")),
                    Text(
                      "تعليم موجه ومعزز بالذكاء الاصطناعي",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: const Color.fromARGB(255, 243, 244, 255)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        "برنامج تعليمي مصمم خصيصاّّ يستخدم الذكاء الاصطناعي لتقديم تجربة متكاملة وفعالة وتلائم احتياجات كل متعلم.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 243, 244, 255)))
                  ],
                ),
                Column(
                  children: [
                    Image(
                           width: MediaQuery.of(context).size.width* 0.8,
                        height:   MediaQuery.of(context).size.height * 0.6,
                        image: AssetImage("images/r1.png")),
                    Text(
                      "تعليم سريع وميسر",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: const Color.fromARGB(255, 243, 244, 255)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        "تعلم بسهولة وسرعة في أي وقت لمساعدتك على تحسين مختلف المهارات.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 243, 244, 255)))
                  ],
                ),
                  Column(
                  children: [
                    Image(
                           width: MediaQuery.of(context).size.width* 0.8,
                        height:   MediaQuery.of(context).size.height * 0.6,
                        image: AssetImage("images/Asset 1.2.png")),
                    Text(
                      "تجربه تعليم جديدة تستهدف جميع فئات الكادر التعليمي",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: const Color.fromARGB(255, 243, 244, 255)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        "منصة نقطه تستهدف جميه فئات الكادر النعليميه من طلاب المدارس وطلاب الجامعات والمدرسيين ودكاتره الجامعات.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 243, 244, 255)))
                  ],
                ),
               
              ],
            ),  
            //  
            //
            Positioned(
                bottom: kBottomNavigationBarHeight + 25,
                right: 40,
                child: SmoothPageIndicator(
                  controller: controller.pagecontroller,
                  onDotClicked: controller.doNavigonclick,
                  count: 3,
                  effect: ExpandingDotsEffect(dotHeight: 6),
                )),
            Positioned(
                bottom: kBottomNavigationBarHeight,
                left: 20,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(255, 59, 47, 73),
                  child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        controller.nextPage();
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
