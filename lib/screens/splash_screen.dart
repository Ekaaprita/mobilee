import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilekelomp/controllers/auth_controller.dart';
import 'package:mobilekelomp/page.dart/login.dart';
import 'package:mobilekelomp/page.dart/register.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 16,
                  bottom: 16.2,
                ),
                child: Text(
                  "Styee",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                width: 240,
                child: Text(
                  "BUAT DAN PILIHLAH GAYAMU SENDIRI",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 21.3,
                  ),
                ),
              ),
              Container(
                width: 320,
                margin: EdgeInsets.only(bottom: 16),
                child: Text(
                  "Ciptakan outfit dengan ciri khasmu berama kami dan buat dirimu merasa sangat percaya diri",
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => Register());
                    },
                    child: Container(
                      width: 128,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Text(
                        "Sign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 32),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => LoginPage());
                    },
                    child: Container(
                      width: 128,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        color: Color(0xff644444),
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Text(
                        "Sign In",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                "lib/assets/images/Group 1.png",
                width: 395,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
