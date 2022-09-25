import 'package:get/get.dart';

import 'package:quiz_app/models/user.dart';
import 'package:quiz_app/services/api/quiz_api.dart';
import 'package:quiz_app/ui/screens/auth/add_name_screen.dart';

class UserController extends GetxController {
  Rx<User>? user;

  login(String mobile) async {
    user!(await QuizApi().login(mobile));
    if (user?.value.username != null) {
      print(user!.value.token);
    } else {
      Get.off(const AddNameScreen());
    }
  }
}
