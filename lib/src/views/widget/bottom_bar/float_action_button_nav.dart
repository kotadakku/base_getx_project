
import 'package:base_project/src/controller/controller.dart';
import 'package:base_project/src/routes/app_routes.dart';
import 'package:base_project/src/views/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class FloatActionButtonNavigationBar extends StatelessWidget {
  FloatActionButtonNavigationBar({Key? key}) : super(key: key);
  final HomeController _homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.h,
      width: 64.h,
      child: FloatingActionButton(
        elevation: 1,
        highlightElevation: 0,
        heroTag: 'home_btn',
        backgroundColor: AppColor.fillPositive,
        focusColor: AppColor.accent100,
        onPressed: () {
          _homeController.changeTabIndex(1);
          Get.offNamed(Routes.HOME);
        },
        child: Icon(
          Icons.home,
          size: 37.h,
          color: AppColor.backgroundLight,
        ),
      ),
    );
  }
}
