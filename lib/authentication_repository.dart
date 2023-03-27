import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';
import 'package:flutter/material.dart';
// import 'package:login_flutter_app/src/features/authentication/screens/welcome/welcome_screen.dart';
// import 'package:login_flutter_app/src/features/core/screens/dashboard/dashboard.dart';

// import 'exceptions/login_with_email_and_pssword_failure.dart';
// import 'exceptions/signup_email_password_failure.dart';


class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();


  //Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  //Will be load when app launches this func will be called and set the firebaseUser state
  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }


  /// If we are setting initial screen from here
  /// then in the main.dart => App() add CircularProgressIndicator()
  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => const WelcomeScreen()) : Get.offAll(() => const Dashboard());
  }

  //FUNC
  void phoneAuthentication(String phoneNo async{
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,

      verificationCompleted: (credential) async{await _auth.signInWithCredential(credential);},

      codeAutoRetrievalTimeout: (verificationId){
        this.verificationId.value = verificationId;
  },

      codeSent: (verificationId,resendToken){this.verificationId.value = verificationId;},

      verificationFailed: (e){
        if(e.code == 'invalid-phone-number'){
          Get.snackbar('Error', 'The provided phone number is not valid')
  }
  },
    );
  }

  Future<bool> verifyOTP(String otp) async{
    var credentials = await _auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: this.verificationId.value, smsCode: otp));
    return credentials.user != null ? true : false;
  }

  //FUNC
  // Future<String?> createUserWithEmailAndPassword(String email, String password) async {
  //   try {
  //     await _auth.createUserWithEmailAndPassword(email: email, password: password);
  //     firebaseUser.value != null ? Get.offAll(() => const Dashboard()) : Get.to(() => const WelcomeScreen());
  //   } on FirebaseAuthException catch (e) {
  //     final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
  //     return ex.message;
  //   } catch (_) {
  //     const ex = SignUpWithEmailAndPasswordFailure();
  //     return ex.message;
  //   }
  //   return null;
  // }


  // Future<String?> loginWithEmailAndPassword(String email, String password) async {
  //   try {
  //     await _auth.signInWithEmailAndPassword(email: email, password: password);
  //   } on FirebaseAuthException catch (e) {
  //     final ex = LogInWithEmailAndPasswordFailure.fromCode(e.code);
  //     return ex.message;
  //   } catch (_) {
  //     const ex = LogInWithEmailAndPasswordFailure();
  //     return ex.message;
  //   }
  //   return null;
  // }


  Future<void> logout() async => await _auth.signOut();
}