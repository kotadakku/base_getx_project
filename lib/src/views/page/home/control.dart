
import 'package:base_project/src/controller/controller.dart';
import 'package:base_project/src/views/widget/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'account_widget.dart';
import 'home_widget.dart';

class ControlPage extends StatelessWidget {
  ControlPage({Key? key}) : super(key: key);
  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child:  Scaffold(
        floatingActionButton: FloatActionButtonNavigationBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: const CupertinoBottomBar(),
        body: Obx(()=>
          IndexedStack(
            index: _homeController.tabIndex.value,
            children: [
              HomeWidget(),
              AccountWidget()
            ],
          ),
        ),
      ),
    );
  }
  Future<bool> _onWillPop(BuildContext context) async{
    return true;
  }
}