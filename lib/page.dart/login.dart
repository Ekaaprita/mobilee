import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilekelomp/controllers/auth_controller.dart';
import 'package:mobilekelomp/page.dart/button.dart';

import 'package:mobilekelomp/page.dart/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text controller

  // try sign in

  AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 145, 121),
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // app name
            const Text(
              "SMART HOME",
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 252, 246, 246)),
            ),

            const SizedBox(height: 50),

            // email textfield
            MyTextField(
              hintText: "Email",
              obscureText: false,
              controller: authController.email,
            ),

            const SizedBox(height: 10),

            // password textfield
            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: authController.password,
            ),

            const SizedBox(height: 10),

            // forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            //sign in button
            MyButton(
              text: "Login",
              onTap: () {
                authController.signIn();
              },
            ),

            // don't have an account? Register here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                ),
                GestureDetector(
                  child: Text(
                    "Register Here",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
