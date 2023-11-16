import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/on_boarding1_controller.dart';

class onboarding1 extends StatefulWidget {
  const onboarding1({super.key});

  @override
  State<onboarding1> createState() => _onboarding1State();
}

class _onboarding1State extends State<onboarding1> {
  final controller = Get.put(on_boarding1_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/Screenshot 2023-10-24 at 1.08.23 AM.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }

  @override
  void initState() {
    super.initState();
    controller.on_navigating_to_next_page();
  }
  //
  // on_navigating_to_next_page() async {
  //   await Future.delayed(Duration(milliseconds: 1000), () {});
  //   Get.to(onboarding2());
  // }
}
