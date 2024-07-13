// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuqta/view/aichat.dart';
import 'package:nuqta/view/course.dart';
import 'package:nuqta/view/credit.dart';
import 'package:nuqta/view/home.dart';
import 'package:nuqta/view/onbording.dart';
import 'package:nuqta/view/p1.dart';
import 'package:nuqta/view/pay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    theme: TheSw.ils,
    locale: Locale("ar"),
    initialRoute:"/Onbording",
      getPages: [
      GetPage(name: "/P1", page: () => P1(),),
      GetPage(name: "/Onbording", page:() => Onbo()),
      GetPage(name: "/Card", page: () => Cardd(),),
      GetPage(name: "/Pay", page: () => Pay(),),
      GetPage(name: "/Course", page: () => Course(),),
      GetPage(name: "/Home", page: () => Home(),),
      GetPage(name: "/AiChat", page: () => AiChat(),)
      ],
    );
  }
}


class TheSw {
  static ThemeData ils = ThemeData.light().copyWith(
    textTheme: TextTheme(
      bodyMedium: TextStyle(fontFamily: 'Cairo' ,color: Colors.black), // Use the chosen font here
    ),
  );
}