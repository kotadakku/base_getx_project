import 'package:base_project/src/binding/binding.dart';
import 'package:base_project/src/views/page/page.dart';
import 'package:get/get.dart';
part './app_pages.dart';

class AppPages {
  static final routes =[
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding()
    ),
    GetPage(
      name: Routes.HOME,
      page: () => ControlPage()
    )
  ];
}