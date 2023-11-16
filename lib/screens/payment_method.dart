import 'package:flutter/material.dart';
import 'package:foodex2/screens/upload_photo_screen.dart';
import 'package:get/get.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                child: Image.asset(
                    'assets/images/Screenshot 2023-10-24 at 11.27.24 PM.png'),
              ),
              Container(
                child: Image.asset(
                  'assets/images/Screenshot 2023-10-24 at 11.50.23 PM.png',
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(UploadPhotoScreen());
                    },
                    child: Text('Next', style: TextStyle(color: Colors.white)),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
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
