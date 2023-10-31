import 'package:belajar_firebase_auth_getx_way/views/auth/controllers/auth_controller.dart';
import 'package:belajar_firebase_auth_getx_way/views/splash/controllers/splash_controller.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => SplashController());
  }
}
