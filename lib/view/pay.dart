// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nuqta/view/credit.dart';
import 'package:pin_plus_keyboard/package/controllers/pin_input_controller.dart';
import 'package:pin_plus_keyboard/pin_plus_keyboard.dart';

class Pay extends StatelessWidget {
  const Pay({super.key});

  @override
  Widget build(BuildContext context) {
    String money = "5 ريال";
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "اضافة رصيد نقطة+",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'cairo',
          ),
        )),
        backgroundColor: Color.fromARGB(255, 31, 31, 57),
      ),
      body: Container(
        color: Color.fromARGB(255, 31, 31, 57),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          SizedBox(height: 40,),
            Text(
              "$money",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            Container(
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 46, 47, 65),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                ),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Text("الرقم السري لبطاقة نقطة+",style: TextStyle(fontSize: 26,color: Colors.white),),
                  Text("الرجاء ادخال كلمة السر للدفع",style: TextStyle(fontSize: 18,color: const Color.fromARGB(255, 183,184,204))),
                    PinPlusKeyBoardPackage(
                        keyboardButtonShape: KeyboardButtonShape.circular,
                        btnTextColor: Colors.white,
                        btnHasBorder: false,
                        inputShape: InputShape.defaultShape,
                        inputBorderRadius: BorderRadius.circular(8),
                        inputFillColor: Colors.white,
                        inputHiddenColor: Color.fromARGB(255, 62,63,84),
                        inputBorderColor: Colors.transparent,
                        doneButton: Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 30,
                        ),
                        backButton: Icon(
                          Icons.cancel_presentation_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        isInputHidden: true,
                        spacing: 0.3,
                        pinInputController: PinInputController(length: 6),
                        onSubmit: () {
                        Get.to(Cardd());
                        },
                        keyboardFontFamily: 'cairo'),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
