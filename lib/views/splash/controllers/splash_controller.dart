import 'dart:async';

import 'package:belajar_firebase_auth_getx_way/routes/app_routes.dart';
import 'package:belajar_firebase_auth_getx_way/utils/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SplashController extends GetxController {
  late Rx<User?> firebaseUser;

  late Rx<GoogleSignInAccount?> googleSignInAccount;

  _setInitialScreen(User? user) {
    Timer(const Duration(seconds: 2), () {
      if (user == null) {
        Get.offAllNamed(AppRoutes.authRoute);
      } else {
        Get.offAllNamed(AppRoutes.homeRoute);
      }
    });
  }

  _setInitialScreenGoogle(GoogleSignInAccount? googleSignInAccount) {
    Timer(const Duration(seconds: 2), () {
      if (googleSignInAccount == null) {
        print("google account null");
        Get.offAllNamed(AppRoutes.authRoute);
      } else {
        print("google account NOT null");
        Get.offAllNamed(AppRoutes.homeRoute);
      }
    });
  }

  @override
  void onReady() {
    firebaseUser = Rx<User?>(auth.currentUser);
    googleSignInAccount = Rx<GoogleSignInAccount?>(googleSignIn.currentUser);

    // bind stream to observable variable
    firebaseUser.bindStream(auth.userChanges());
    ever(firebaseUser, _setInitialScreen);

    googleSignInAccount.bindStream(googleSignIn.onCurrentUserChanged);
    ever(googleSignInAccount, _setInitialScreenGoogle);
    super.onReady();
  }
}
