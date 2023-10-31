import 'package:belajar_firebase_auth_getx_way/utils/bindings/initial.dart';
import 'package:belajar_firebase_auth_getx_way/views/auth/auth_page.dart';
import 'package:belajar_firebase_auth_getx_way/views/homepage.dart';
import 'package:belajar_firebase_auth_getx_way/views/splash/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String rootRoute = '/';
  static const String homeRoute = '/home';
  static const String authRoute = '/auth';

  static List<GetPage> pages = [
    GetPage(
      name: rootRoute,
      page: () => const SplashScreen(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: authRoute,
      page: () => const AuthPage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: homeRoute,
      page: () => const MyHomePage(),
      binding: InitialBinding(),
    ),
  ];
}
