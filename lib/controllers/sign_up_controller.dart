import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../constants/constants.dart';

class sign_up_controller extends GetxController {
  sign_up_Api() async {
    await http.post(
        Uri.parse('https://project1.amit-learning.com/api/auth/register/user'),
        body: {
          "name": c.First_Name,
          "email": c.email,
          "password": c.password,
          "mobile": c.Mobile
        });
  }
}
