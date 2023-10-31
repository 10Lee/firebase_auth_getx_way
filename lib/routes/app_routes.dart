import 'package:belajar_firebase_auth_getx_way/utils/bindings/initial.dart';
import 'package:belajar_firebase_auth_getx_way/views/auth/register_page.dart';
import 'package:belajar_firebase_auth_getx_way/views/homepage.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String rootRoute = '/';
  static const String registerRoute = '/register';

  static List<GetPage> pages = [
    GetPage(
      name: rootRoute,
      page: () => const MyHomePage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: registerRoute,
      page: () => const RegisterPage(),
      binding: InitialBinding(),
    ),
  ];
}