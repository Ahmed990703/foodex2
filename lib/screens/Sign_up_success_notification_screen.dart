import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen.dart';

class SignUpSuccessNotificationScreen extends StatefulWidget {
  const SignUpSuccessNotificationScreen({super.key});

  @override
  State<SignUpSuccessNotificationScreen> createState() =>
      _SignUpSuccessNotificationScreenState();
}

class _SignUpSuccessNotificationScreenState
    extends State<SignUpSuccessNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/Screenshot 2023-10-25 at 2.21.18 PM.png',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () {
                Get.to(HomeScreen());
              },
              child: Container(
                height: 70,
                child: Image.asset(
                  'assets/images/Screenshot 2023-10-25 at 2.37.47 PM.png',
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
