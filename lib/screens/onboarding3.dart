import 'package:flutter/material.dart';
import 'package:foodex2/screens/sign_up_ui.dart';
import 'package:get/get.dart';

class onboarding3 extends StatelessWidget {
  const onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // width: MediaQuery.of(context).size.width,
              //height: ,
              child: Image.asset(
                  'assets/images/Screenshot 2023-10-24 at 2.34.57 AM.png'),
            ),
            Center(
                child: Container(
              width: 100,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  Get.to(SignUpScreen());
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
            ))
          ],
        ),
      )),
    );
  }
}
