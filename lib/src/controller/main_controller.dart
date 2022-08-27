import 'package:base_project/src/translation/translation.dart';
import 'package:get/get.dart';

class MainController extends GetxController{
  final lang = 'en'.obs;

  @override
  void onInit() {
    lang.value = LocalizationService.locale!.languageCode;
  }

  void changeLanguage(String value) async {
    lang.value = value;
    LocalizationService.changeLocale(value);
  }
}