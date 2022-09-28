import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/user_controller.dart';
import 'package:quiz_app/utils/app_style.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final UserController userController = Get.find();

  @override
  Widget build(BuildContext context) {
    userController.getUserInfo();

    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset('assets/images/logo.svg'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppStyle.padddin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('حسابي', style: AppStyle.titleTextStyle),
              const Spacer(),
              Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        userController.user.value.username!,
                        style: AppStyle.bodyTextStyle,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        userController.user.value.mobile!,
                        style: AppStyle.bodyTextStyle,
                      ),
                    ],
                  )),
              const Spacer(),
              const Text('سجل الانتصارات', style: AppStyle.titleTextStyle),
              const Spacer(),
              Container(
                margin: const EdgeInsets.all(AppStyle.padddin / 3),
                padding: const EdgeInsets.all(AppStyle.padddin - 5),
                decoration: BoxDecoration(
                    border: Border.all(color: AppStyle.blackColor, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      '20',
                      style: AppStyle.bodyTextStyle,
                    ),
                    Text(
                      DateTime.now().toString(),
                      style: AppStyle.bodyTextStyle,
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
