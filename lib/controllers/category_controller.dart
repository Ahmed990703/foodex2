import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/Api_models/categorey_model.dart';

class CategoryController extends GetxController {
  get_data() async {
    final response = await http
        .get(Uri.parse('https://project1.amit-learning.com/api/category'));
    if (response.statusCode == 200) {
      print(response.body);
      return CategoreyModel.fromJson(jsonDecode(response.body));
    }
  }

  @override
  void onInit() {
    get_data();
  }
}
