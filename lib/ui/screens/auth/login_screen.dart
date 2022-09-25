import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/mobile_controller.dart';
import 'package:quiz_app/ui/widgets/custom_button.dart';
import 'package:quiz_app/ui/widgets/login_text_field_widget.dart';
import 'package:quiz_app/utils/app_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  MobileController mobileController = Get.put(MobileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppStyle.padddin),
        child: Column(
          children: [
            SvgPicture.asset('assets/images/logo.svg'),
            const Spacer(),
            LoginTextFieldWidget(),
            const Spacer(),
            CustomButton(
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  mobileController.validatePhoneNumber();
                },
                text: 'تسجيل دخول'),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
