import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodex2/firebase_options.dart';
import 'package:foodex2/screens/onboarding1.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(),
      child: ScreenUtilInit(
        designSize: const Size(200, 100),
        builder: (BuildContext context, Widget? child) {
          return GetMaterialApp(
              debugShowCheckedModeBanner: false, home: onboarding1());
        },
      ),
    );
  }
}
