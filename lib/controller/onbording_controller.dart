import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuqta/view/home.dart';

class OnBordingContorller extends GetxController{

static OnBordingContorller get instance=> Get.find();

final pagecontroller = PageController();
Rx<int> currentPageIndex = 0.obs;

void updatepageindacter(index)=> currentPageIndex.value=index;  

void doNavigonclick(index) {
  currentPageIndex.value = index;
  pagecontroller.jumpTo(index.toDouble()); // Convert index to double
}


void nextPage(){
if(currentPageIndex.value==2){
Get.off(Home());
}else{
  int page = currentPageIndex.value +1; 
  pagecontroller.jumpToPage(page);
}
}


}