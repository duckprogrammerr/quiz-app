import 'package:get/get.dart';
import 'package:quiz_app/models/user.dart';
import 'package:quiz_app/services/api/quiz_api.dart';
import 'package:quiz_app/ui/screens/auth/add_name_screen.dart';
import 'package:quiz_app/utils/app_style.dart';

class UserController extends GetxController {
  var user = User().obs;

  login(String mobile) async {
    User userData = await QuizApi().login(mobile);

    user(userData);
    if (user.value.username == '') {
      Get.off(AddNameScreen());
    } else {
      print(user.value.token);
    }
  }

  addNameToUser(String name) async {
    if (name.isEmpty) {
      Get.showSnackbar(AppStyle().erorrMsgSnackBar('خانة السلا'));
    } else {
      var s = await QuizApi().addNewUserName(user.value.token!, name);
      print(s);
      // Get.off(page)
    }
  }
}
