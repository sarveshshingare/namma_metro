import 'package:get/get.dart';
import 'package:namma_metro/features/onBoarding/on_boarding.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool animte = false.obs;
  Future startAnimation() async {
    animte.value = true;
    Future.delayed(const Duration(milliseconds: 2000));
    Get.to(const Onboarding());
  }
}
