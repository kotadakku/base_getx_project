
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  final tabIndex = 0.obs;

  @override
  void onInit() {

  }

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

}