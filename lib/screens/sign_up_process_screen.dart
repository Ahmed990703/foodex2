import 'package:flutter/material.dart';
import 'package:foodex2/screens/payment_method.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';
import '../controllers/sign_up_controller.dart';

class SignupProcessScreen extends StatefulWidget {
  const SignupProcessScreen({super.key});

  @override
  State<SignupProcessScreen> createState() => _SignupProcessScreenState();
}

class _SignupProcessScreenState extends State<SignupProcessScreen> {
  final formkey = GlobalKey<FormState>();
  final controller = sign_up_controller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                    'assets/images/Screenshot 2023-10-24 at 8.52.29 PM.png'),
              ),
              Form(
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextFormField(
                      controller: c.First_Name,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'this field is required';
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        hintStyle: TextStyle(color: Colors.green),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: c.Last_Name,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'this field is required';
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        hintStyle: TextStyle(color: Colors.green),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: c.Mobile,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return 'this field is required';
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Mobile Number',
                        hintStyle: TextStyle(color: Colors.green),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 230),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  width: 150,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    onPressed: () async {
                      await controller
                          .sign_up_Api()
                          .then(Get.to(PaymentMethod()));
                    },
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
