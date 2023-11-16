import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../constants/constants.dart';

class LogInController extends GetxController {
  //firebase service = firebase();
  //GoogleSignIn googleSignIn = GoogleSignIn();
  // SignInWithGoogle() async {
  //   googleSignIn.signOut();
  //   //esraa.amit@gmail.com
  //   // emit(AuthLoadingState());
  //   GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
  //   GoogleSignInAuthentication? googleSignInAuthentication =
  //       await googleSignInAccount!.authentication;
  //   AuthCredential userCredential = GoogleAuthProvider.credential(
  //     idToken: googleSignInAuthentication.idToken,
  //     accessToken: googleSignInAuthentication.accessToken,
  //   );
  //   var user =
  //       await service.auth.signInWithCredential(userCredential).then((value) {
  //     //Get.offAll(home_screen());
  //   });
  //   update();
  // }
  sign_in_Api() async {
    await http.post(
        Uri.parse('https://project1.amit-learning.com/api/auth/login'),
        body: {"email": c.email, "password": c.password});
  }
}
