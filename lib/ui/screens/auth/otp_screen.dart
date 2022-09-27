import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/user_controller.dart';
import 'package:quiz_app/ui/widgets/custom_button.dart';
import 'package:quiz_app/ui/widgets/otp_form.dart';
import 'package:quiz_app/utils/app_style.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  UserController userController = Get.put(UserController());
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(AppStyle.padddin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SvgPicture.asset('assets/images/logo.svg'),
              const Spacer(),
              const Text(
                'من فضلك ادخل رمز التحقق الذي تم ارساله على جوالك',
                style: AppStyle.bodyTextStyle,
              ),
              const SizedBox(
                height: AppStyle.padddin,
              ),
              OtpForm(formKey: formKey),
              const Spacer(),
              CustomButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      userController.login(Get.arguments);
                    } else {
                      Get.showSnackbar(
                          AppStyle().erorrMsgSnackBar('احد الحقول فارغ'));
                    }
                  },
                  text: 'تحقق'),
              const Spacer(),
            ],
          ),
        ));
  }
}
