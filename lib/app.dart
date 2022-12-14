import 'package:base_project/src/binding/binding.dart';
import 'package:base_project/src/controller/controller.dart';
import 'package:base_project/src/service/service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'src/routes/app_routes.dart';
import 'src/views/page/page.dart';
import 'src/views/theme/theme.dart';
import 'package:get/get.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392, 816),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context){
        return Obx(()=>
            GetMaterialApp(
              title: 'Legal Chat',
              theme: AppTheme.appTheme,
              builder: ( context, widget){
                return MediaQuery(
                  //Setting font does not change with system font size
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                  child: widget!,
                );
              },
              initialRoute: '/',
              getPages:  AppPages.routes ,
              initialBinding: MainBindings(),
              home: Get.put(AuthService()).isLogged.value ? ControlPage() :LoginPage(),
            )
        );
      },
    );
  }
}