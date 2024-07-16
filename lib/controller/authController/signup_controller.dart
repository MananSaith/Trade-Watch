import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../firebase/wrapper.dart';

class SignupController extends GetxController {
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController countryCode = TextEditingController();




  void signupControllerButton() async {
    try {
      if(validateControllersNotEmpty()){

        if(checkConfirmPassword(password.text,confirmPassword.text)){
          if (validatePassword(password.text)) {
            //it will authencate the data store password and email
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: email.text, password: password.text);
            //it will add data to cloud like
            //first name last name
            addDataToCloud();
            Get.off(const Wrapper());
          }
          else {
            Get.snackbar('Password Error',
              "Password must contain upper-case, number, special character & space not allow",
              snackPosition: SnackPosition.BOTTOM,
            );
          }
        }
        else{
          Get.snackbar('Password Error',
            "Confirm your Password",
            snackPosition: SnackPosition.BOTTOM,
          );
        }
      }
      else{
        Get.snackbar('Miss Field',
          "Enter the all field",
          snackPosition: SnackPosition.BOTTOM,
        );
      }

    }
    on FirebaseAuthException catch (e) {
      String errorMessage;
      switch (e.code) {
        case 'email-already-in-use':
          errorMessage =
          'The email address is already in use by another account.';
          break;
        case 'invalid-email':
          errorMessage = 'The email address is not valid.';
          break;
        case 'operation-not-allowed':
          errorMessage = 'Email/password accounts are not enabled.';
          break;
        case 'weak-password':
          errorMessage = 'The password is too weak.';
          break;
        default:
          errorMessage = 'An undefined error happened: ${e.message}';
      }
      Get.snackbar('Sign Up Error', errorMessage,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
    catch (e) {
      // General error handling
      Get.snackbar('Error', 'An error occurred: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    }

    @override
    void onClose() {
      email.dispose();
      password.dispose();
      super.onClose();
    }
  }

// check password is strong
  bool validatePassword(String password) {
    // Regular expression to check if password contains at least one special character, one number, and one uppercase letter
    final RegExp specialCharRegExp = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    final RegExp numberRegExp = RegExp(r'\d');
    final RegExp upperCaseRegExp = RegExp(r'[A-Z]');
    final RegExp spaceRegExp = RegExp(r'\s'); // Check for spaces

    // Check if the password contains a space
    if (spaceRegExp.hasMatch(password)) {
      return false;
    }

    // Check if the password meets all the criteria
    if (specialCharRegExp.hasMatch(password) &&
        numberRegExp.hasMatch(password) &&
        upperCaseRegExp.hasMatch(password)) {
      return true;
    }
    return false;
  }

  bool checkConfirmPassword(String password1,String password2){
    if(password1==password2){
      return true;
    }
    return false;
  }

  addDataToCloud() async{
    await FirebaseFirestore.instance.collection("regesterData").add({
      "firstname": firstname.text,
      "lastname": lastName.text,
      "phonenumber": phone.text,
      "countrycode": countryCode.text,

    });
  }

  // it will check all the textfield are filed or not

  bool validateControllersNotEmpty() {
    List<TextEditingController> controllers=[
      firstname,
      lastName,
      email,
      password,
      confirmPassword,
      phone,
      countryCode
    ];
    for (var controller in controllers) {
        if (controller.text == null || controller.text.isEmpty) {
          return false;
        }
    }
    return true;
  }
}