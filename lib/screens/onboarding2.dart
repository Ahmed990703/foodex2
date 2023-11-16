import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'onboarding3.dart';

class onboarding2 extends StatelessWidget {
  const onboarding2({super.key});

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
                  'assets/images/Screenshot 2023-10-24 at 1.08.41 AM.png'),
            ),
            Center(
                child: Container(
              width: 100,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  Get.to(onboarding3());
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
