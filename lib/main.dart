import 'package:belajar_firebase_auth_getx_way/routes/app_routes.dart';
import 'package:belajar_firebase_auth_getx_way/utils/bindings/initial.dart';
import 'package:belajar_firebase_auth_getx_way/utils/constants.dart';
import 'package:belajar_firebase_auth_getx_way/views/auth/controllers/auth_controller.dart';
import 'package:belajar_firebase_auth_getx_way/views/splash/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebaseInitialization.then((value) {
    Get.put(SplashController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Firebase Auth with GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppRoutes.pages,
      initialBinding: InitialBinding(),
    );
  }
}
