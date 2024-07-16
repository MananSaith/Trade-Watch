import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../firebase/wrapper.dart';

class SignInController extends GetxController{
  final TextEditingController emailPhone=TextEditingController();
  final TextEditingController password=TextEditingController();

  void signInControllerButton() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailPhone.text,
        password: password.text,
      );
      // User signed in successfully
      Get.off(() => const Wrapper());
    } on FirebaseAuthException catch (e) {
      String errorMessage;
      switch (e.code) {
        case 'invalid-email':
          errorMessage = 'The email address is not valid.';
          break;
        case 'user-disabled':
          errorMessage = 'The user corresponding to the given email has been disabled.';
          break;
        case 'user-not-found':
          errorMessage = 'There is no user corresponding to the given email.';
          break;
        case 'wrong-password':
          errorMessage = 'The password is invalid for the given email.';
          break;
        default:
          errorMessage = 'An undefined error happened: ${e.message}';
      }
      Get.snackbar('Sign In Error', errorMessage, snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      // General error handling
      Get.snackbar('Error', 'An error occurred: $e', snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  void onClose() {
    emailPhone.dispose();
    password.dispose();
    super.onClose();
  }

}