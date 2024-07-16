
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../firebase/wrapper.dart'; // Adjust the import path to your project structure

class SignInWithGoogleController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final  googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        // The user canceled the sign-in
        return;
      }

      // Obtain the auth details from the request
      final   googleAuth = await googleUser.authentication;

      // Create a new credential
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase with the Google user credentials
      await _auth.signInWithCredential(credential);

      print("${UserCredential}");

      // Navigate to the next page after successful sign-in
      Get.off(const Wrapper());
    } catch (error) {
      Get.snackbar('Sign In Error', 'Failed to sign in with Google: $error', snackPosition: SnackPosition.BOTTOM);
    }


  }

  @override
  void onClose() {
    _googleSignIn.disconnect();
    super.onClose();
  }
}
