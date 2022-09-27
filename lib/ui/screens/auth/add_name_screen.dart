import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/user_controller.dart';
import 'package:quiz_app/ui/widgets/custom_button.dart';
import 'package:quiz_app/utils/app_style.dart';

class AddNameScreen extends StatelessWidget {
  AddNameScreen({Key? key}) : super(key: key);
  final TextEditingController name = TextEditingController();
  final UserController userController = Get.find();

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
              'الإسم الكريم',
              style: AppStyle.bodyTextStyle,
            ),
            const SizedBox(
              height: AppStyle.padddin,
            ),
            TextField(
              controller: name,
              style: AppStyle.bodyTextStyle,
              textAlignVertical: TextAlignVertical.center,
              cursorHeight: 25,
              inputFormatters: const [],
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppStyle.blackColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppStyle.blackColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            const Spacer(),
            CustomButton(
                onPressed: () => userController.addNameToUser(name.text),
                text: 'تحقق'),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
