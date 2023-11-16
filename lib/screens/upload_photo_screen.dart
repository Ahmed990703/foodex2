import 'package:flutter/material.dart';
import 'package:foodex2/screens/upload_preview.dart';
import 'package:get/get.dart';

class UploadPhotoScreen extends StatefulWidget {
  const UploadPhotoScreen({super.key});

  @override
  State<UploadPhotoScreen> createState() => _UploadPhotoScreenState();
}

class _UploadPhotoScreenState extends State<UploadPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
            child: Column(
          children: [
            Image.asset(
                'assets/images/Screenshot 2023-10-25 at 12.11.28 AM.png'),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 300,
                      child: Image.asset(
                          'assets/images/Screenshot 2023-10-25 at 12.20.26 AM.png'),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 300,
                      child: Image.asset(
                          'assets/images/Screenshot 2023-10-25 at 12.26.55 AM.png'),
                    ),
                  ),
                  SizedBox(height: 70),
                  Container(
                    width: 100,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                      onPressed: () {
                        Get.to(UploadPreview());
                      },
                      child: Text('Next'),
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
