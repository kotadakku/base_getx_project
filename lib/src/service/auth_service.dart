
import 'package:base_project/src/data/provider/provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class AuthService extends GetxService {
  final isLogged = false.obs;
  String token = '';

  @override
  void onInit() async {
    await autoLogin();
  }
  Future<void> autoLogin() async {
    final storage = FlutterSecureStorage();
    String? username = await storage.read(key: CacheManagerKey.USERNAME.toString());
    String? password = await storage.read(key: CacheManagerKey.PASSWORD.toString());
    // if(username != null && password != null) {
    //   try {
    //     final result = await UserRepo().getToken(
    //         data: {
    //           'username': username,
    //           'password': password
    //         }
    //     );
    //     if (result.statusCode == CODE_SUCCESS) {
    //       GetStorageProvider().save(
    //           key: CacheManagerKey.TOKEN.toString(),
    //           value: result.objects
    //       );
    //       token = result.objects!;
    //       isLogged.value = true;
    //
    //       HomeController _homeController = Get.put(HomeController());
    //       await _homeController.getDetailUser();
    //     }
    //     else {
    //
    //     }
    //   } catch (error) {
    //     print(error);
    //   }
    // }
  }
}