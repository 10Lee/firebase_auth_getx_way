import 'package:belajar_firebase_auth_getx_way/utils/bindings/initial.dart';
import 'package:belajar_firebase_auth_getx_way/views/auth/register_or_login_page.dart';
import 'package:belajar_firebase_auth_getx_way/views/homepage.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String rootRoute = '/';
  static const String registerOrLoginRoute = '/register_or_login';

  static List<GetPage> pages = [
    GetPage(
      name: rootRoute,
      page: () => const MyHomePage(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: registerOrLoginRoute,
      page: () => const RegisterOrLoginPage(),
      binding: InitialBinding(),
    ),
  ];
}
