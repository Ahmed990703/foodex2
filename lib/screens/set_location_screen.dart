import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Sign_up_success_notification_screen.dart';
import 'google_map_screen.dart';

class SetLocationScreen extends StatefulWidget {
  const SetLocationScreen({super.key});

  @override
  State<SetLocationScreen> createState() => _SetLocationScreenState();
}

class _SetLocationScreenState extends State<SetLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30),
              Image.asset(
                'assets/images/Screenshot 2023-10-25 at 1.31.09 PM.png',
                fit: BoxFit.fill,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 270,
                      child: Image.asset(
                          'assets/images/Screenshot 2023-10-25 at 1.44.11 PM.png'),
                    ),
                    SizedBox(height: 30),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(150))),
                      padding: EdgeInsets.all(20),
                      child: OutlinedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.grey)),
                        onPressed: () {
                          Get.to(google_map())?.then((value) =>
                              Get.to(SignUpSuccessNotificationScreen()));
                        },
                        child: Center(
                          child: Text(
                            'Set Location',
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                width: 100,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {},
                  child: Text('Next'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
