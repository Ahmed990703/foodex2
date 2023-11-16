import 'package:flutter/material.dart';
import 'package:foodex2/screens/sign_up_process_screen.dart';
import 'package:get/get.dart';

import '../constants/constants.dart';
import '../controllers/sign_in_controller.dart';

class loginScreen_Ui extends StatefulWidget {
  const loginScreen_Ui({super.key});

  @override
  State<loginScreen_Ui> createState() => _loginScreen_UiState();
}

class _loginScreen_UiState extends State<loginScreen_Ui> {
  LogInController controller = LogInController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
            child: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/images/Screenshot 2023-10-24 at 3.05.28 PM.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            SizedBox(height: 15),
            Form(
                child: Column(
              children: [
                TextFormField(
                  controller: c.email,
                  validator: (v) {
                    if (v!.isEmpty) {
                      return 'this field is required';
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.green),
                    prefixIcon: Icon(
                      Icons.email_rounded,
                      color: Colors.green,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                SizedBox(height: 30),
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
                ),
                SizedBox(height: 17),
                Center(
                  child: Text(
                    'Or Continue With',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 17),
                Row(
                  children: [
                    SizedBox(width: 22),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        child: Image.asset(
                            'assets/images/Screenshot 2023-10-24 at 3.46.25 PM.png'),
                      ),
                    ),
                    SizedBox(width: 38),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        child: Image.asset(
                            'assets/images/Screenshot 2023-10-24 at 3.46.49 PM.png'),
                      ),
                    )
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Your Password?',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
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
                      controller
                          .sign_in_Api()
                          .then(Get.to(SignupProcessScreen()));
                    },
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ],
        )),
      ),
    );
  }
}
