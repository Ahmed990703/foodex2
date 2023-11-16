import 'package:flutter/material.dart';
import 'package:foodex2/screens/sign_up_process_screen.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';
import 'logIn_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  final formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Container(
                width: 370,
                child: Image.asset('assets/images/SignUp.png'),
              ),
              Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: c.user,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'this field is required';
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Name',
                        hintStyle: TextStyle(color: Colors.green),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.green,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: c.email,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'this field is required';
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'E-mail',
                        hintStyle: TextStyle(color: Colors.green),
                        prefixIcon: Icon(
                          Icons.email_rounded,
                          color: Colors.green,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: c.password,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'this field is required';
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'password',
                        hintStyle: TextStyle(color: Colors.green),
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.green,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      width: 150,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green)),
                        onPressed: () {
                          Get.to(SignupProcessScreen());
                        },
                        child: Center(
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(loginScreen_Ui());
                        },
                        child: Text(
                          'already have an account?',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.normal),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
