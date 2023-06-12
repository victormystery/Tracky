// ignore_for_file: unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../screen/auth/register.dart';
import '../../screen/main_feature/bottom_bar/home.dart';
import '../helperfunction.dart';

class AuthService {
  String username = "";
  String phone = "";
  String email = "";
  var code = "";

  final storage = FlutterSecureStorage();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  // Future otp() async {
  //   try {
  //     PhoneAuthCredential credential = PhoneAuthProvider.credential(
  //         verificationId: Register.verify, smsCode: code);

  //     // Sign the user in (or link) with the credential
  //     await firebaseAuth.signInWithCredential(credential);
  //     storeToken(credential);
  //     Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (_) => Home(),
  //         ));
  //   } catch (e) {
  //     return null;
  //   }
  // }

  // Signout Function
  Future signOut() async {
    try {
      await HelperFunctions.saveUserLoggedInStatus(false);
      await HelperFunctions.saveUserEmailSf("");
      await HelperFunctions.saveUserNameSf("");
      await HelperFunctions.saveUserPhoneSf("");
      await firebaseAuth.signOut();
    } catch (e) {
      return null;
    }
  }

  Future<void> storeToken(PhoneAuthCredential credential) async {
    await storage.write(key: "token", value: credential.token.toString());
    await storage.write(key: "credential", value: credential.toString());
  }

  Future<String?> getToken() async {
    return await storage.read(key: "token");
  }
}
