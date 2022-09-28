import 'package:get/get.dart';
import 'package:quiz_app/models/user.dart';
import 'package:quiz_app/services/api/quiz_api.dart';
import 'package:quiz_app/services/database/local_database.dart';
import 'package:quiz_app/ui/screens/main_screen.dart';
import 'package:quiz_app/ui/screens/auth/add_name_screen.dart';
import 'package:quiz_app/ui/screens/auth/login_screen.dart';
import 'package:quiz_app/utils/api_constants.dart';
import 'package:quiz_app/utils/app_style.dart';

class UserController extends GetxController {
  var user = User().obs;

  tokenVerifocation() async {
    String token = LocalDatabase().token.val;
    print(token);
    if (token != '') {
      TokenStatus tokenStatus = await QuizApi().tokenVerification(token);
      if (tokenStatus == TokenStatus.vaild) {
        return Get.off(const MainScreen());
      }
    }
    return Get.off(const LoginScreen());
  }

  getUserInfo() async {
    String token = LocalDatabase().token.val;
    User data = await QuizApi().fetchUserInfo(token);
    user.value = data;
  }

  login(String mobile) async {
    User userData = await QuizApi().login(mobile);

    user(userData);
    print(userData.token);
    LocalDatabase().token.val = userData.token!;
    if (user.value.username == '') {
      Get.off(AddNameScreen());
    } else {
      Get.off(const MainScreen());
    }
  }

  addNameToUser(String name) async {
    if (name.isEmpty) {
      Get.showSnackbar(AppStyle().erorrMsgSnackBar(''));
    } else {
      await QuizApi().addNewUserName(user.value.token!, name);
      Get.off(const MainScreen());
    }
  }

  logout() async {
    LocalDatabase().token.val = '';
    Get.off(const LoginScreen());
  }
}
