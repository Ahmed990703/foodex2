import 'package:get/get.dart';

import '../screens/onboarding2.dart';

class on_boarding1_controller extends GetxController {
  on_navigating_to_next_page() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Get.to(onboarding2());
  }
}
