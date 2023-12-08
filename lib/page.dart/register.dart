import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilekelomp/controllers/auth_controller.dart';
import 'package:mobilekelomp/page.dart/button.dart';
import 'package:mobilekelomp/page.dart/textfield.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  AuthController auth_controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 212, 145, 121),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // app name
                const Text(
                  "SMART HOME",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 50),
                // username textfield
                MyTextField(
                  hintText: "Username",
                  obscureText: false,
                  controller: auth_controller.username,
                ),
                const SizedBox(height: 10),
                // email textfield
                MyTextField(
                  hintText: "Email",
                  obscureText: false,
                  controller: auth_controller.email,
                ),
                const SizedBox(height: 10),
                MyTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: auth_controller.password,
                ),
                const SizedBox(height: 10),
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
                // register button
                MyButton(
                  text: "Register",
                  onTap: () {
                    auth_controller.signUp();
                  },
                ),
                // already have an account? Register here
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    GestureDetector(
                      child: const Text(
                        "Login Here",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
