// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Cardd extends StatelessWidget {
  const Cardd({super.key});

  @override
  Widget build(BuildContext context) {
    String cardNumber = " ";
    String expiryDate = "12/24";
    String cardHolderName = "Abdulwahed-s";
    String cvvCode = "320";
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
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "$money",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            CreditCardWidget(
              backgroundImage: "images/card5.png",
              cardType: CardType.otherBrand,
              bankName: "nuqta+",
              isChipVisible: false,
              isHolderNameVisible: true,
              obscureCardNumber: false,
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: false,
              onCreditCardWidgetChange: (p0) {},
            ),
            SizedBox(
              height: 30,
            ),
            SmoothPageIndicator(
              controller: PageController(),
              count: 3,
              effect: JumpingDotEffect(
                  dotHeight: 10, dotWidth: 10, dotColor: Colors.white),
            ),
            SizedBox(
              height: 140,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 60, 92, 255),
                    fixedSize: Size(340, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {},
                child: Center(
                    child: Text(
                  "ادفع الان",
                  style: TextStyle(
                      fontFamily: 'cairo',
                      color: const Color.fromARGB(255, 237, 249, 255),
                      fontSize: 20),
                )))
          ],
        ),
      ),
    );
  }
}
