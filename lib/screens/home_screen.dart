import 'package:flutter/material.dart';

import '../controllers/category_controller.dart';
import '../models/Api_models/categorey_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CategoryController controller = CategoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomNavigationBar: ,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FutureBuilder(
                  future: controller.get_data(),
                  builder: (builder, AsyncSnapshot snapshot) {
                    CategoreyModel data = snapshot.data;

                    return ListView.builder(
                        itemCount: data.data.length,
                        itemBuilder: (context, index) {});
                  })
            ],
          ),
        ),
      ),
    );
  }
}
