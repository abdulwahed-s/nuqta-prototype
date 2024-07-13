import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homecontroller extends GetxController {
  bool ispressed = false;
  Color sw1 =Color.fromARGB(255,62,90,255);
  Color sw2 = Color.fromARGB(
    255,
    137,
    137,
    155,
  );
  Color sw3 = Color.fromARGB(
    255,
    137,
    137,
    155,
  );
  Color sw4 = Color.fromARGB(
    255,
    137,
    137,
    155,
  );
  void press() {
    ispressed = true;
    update();
  }

  void colo(int num) {
    switch (num) {
      case 1:
        {
          sw1 = Color.fromARGB(255,62,90,255);
           sw2 = Color.fromARGB(
            255,
            137,
            137,
            155,
          );
           sw3 = Color.fromARGB(
            255,
            137,
            137,
            155,
          );
           sw4 = Color.fromARGB(
            255,
            137,
            137,
            155,
          );
        }
        break;
         case 2:
        {
          sw1 =Color.fromARGB(
            255,
            137,
            137,
            155,
          );
           sw2 =  Color.fromARGB(255,62,90,255);
           sw3 = Color.fromARGB(
            255,
            137,
            137,
            155,
          );
           sw4 = Color.fromARGB(
            255,
            137,
            137,
            155,
          );
        }
        break;
         case 3:
        {
          sw1 =Color.fromARGB(
            255,
            137,
            137,
            155,
          );
           sw2 = Color.fromARGB(
            255,
            137,
            137,
            155,
          );
           sw3 =  Color.fromARGB(255,62,90,255);
           sw4 = Color.fromARGB(
            255,
            137,
            137,
            155,
          );
        }
        break;
         case 4:
        {
          sw1 =Color.fromARGB(
            255,
            137,
            137,
            155,
          );
           sw2 = Color.fromARGB(
            255,
            137,
            137,
            155,
          );
           sw3 = Color.fromARGB(
            255,
            137,
            137,
            155,
          );
           sw4 =  Color.fromARGB(255,62,90,255);
        }
        break;
    }
    update();
  }
}
