import 'package:get/get.dart';
import 'package:quiz_app/models/score.dart';
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
  var userHestory = <Score>[].obs;
  LocalDatabase localDatabase = LocalDatabase();

  tokenVerifocation() async {
    String token = localDatabase.token.val;
    if (token != '') {
      TokenStatus tokenStatus = await QuizApi().tokenVerification(token);
      if (tokenStatus == TokenStatus.vaild) {
        return Get.off(() => const MainScreen(),
            duration: const Duration(milliseconds: 500),
            transition: Transition.fade);
      }
    }
    return Get.off(() => const LoginScreen());
  }

  getUserInfo() async {
    String token = localDatabase.token.val;
    userHestory.value = userHestoryFromJson(localDatabase.userHestory.val);
    User data = await QuizApi().fetchUserInfo(token);
    print(localDatabase.userHestory.val);

    print(userHestory);
    user(data);
  }

  login(String mobile) async {
    User userData = await QuizApi().login(mobile);

    user(userData);

    localDatabase.token.val = userData.token!;
    if (user.value.username == '') {
      Get.off(() => AddNameScreen());
    } else {
      Get.off(() => const MainScreen());
    }
  }

  addNameToUser(String name) async {
    if (name.isEmpty) {
      Get.showSnackbar(AppStyle().erorrMsgSnackBar('من فضلك ادخل اسم'));
    } else {
      await QuizApi().addNewUserName(user.value.token!, name);
      Get.off(() => const MainScreen());
    }
  }

  logout() async {
    localDatabase.deleteUserInfo();
    Get.off(() => const LoginScreen());
  }
}
