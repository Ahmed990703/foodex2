import 'package:flutter/material.dart';
import 'package:foodex2/screens/set_location_screen.dart';
import 'package:get/get.dart';

class UploadPreview extends StatefulWidget {
  const UploadPreview({super.key});

  @override
  State<UploadPreview> createState() => _UploadPreviewState();
}

class _UploadPreviewState extends State<UploadPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Image.asset(
                    'assets/images/Screenshot 2023-10-25 at 12.11.28 AM.png'),
              ),
              SizedBox(height: 450),
              Center(
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  width: 100,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    onPressed: () {
                      Get.to(SetLocationScreen());
                    },
                    child: Text('Next'),
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
