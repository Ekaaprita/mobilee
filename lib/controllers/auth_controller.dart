import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilekelomp/screens/home_screen.dart';
import 'package:mobilekelomp/screens/splash_screen.dart';

class AuthController extends GetxController {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final TextEditingController username = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    firebaseAuth.authStateChanges().listen((user) {
      if (user == null) {
        Get.offAll(() {
          return const SplashScreen();
        });
      }
      super.onInit();
    });
  }

  @override
  void onClose() {
    username.dispose();
    email.dispose();
    password.dispose();
    super.onClose();
  }

  void clearValues() {
    username.clear();
    email.clear();
    password.clear();
  }

  Future<void> signUp() async {
    try {
      isLoading.value = true;
      await firebaseAuth.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      if (firebaseAuth.currentUser != null) {
        clearValues();
        Get.offAll(() {
          return const HomeScreen();
        });
      }
    } catch (error) {
      print('Error: $error');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> signIn() async {
    try {
      isLoading.value = true;
      await firebaseAuth.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      if (firebaseAuth.currentUser != null) {
        clearValues();
        Get.offAll(() {
          return const HomeScreen();
        });
      }
    } catch (error) {
      print('Error $error');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> continueWithGoogle() async {
    try {} catch (error) {
      print('Error: $error');
    }
  }

  Future<void> signOut() async {
    try {
      firebaseAuth.signOut();
    } catch (error) {
      print('Error: $error');
    }
  }
}
