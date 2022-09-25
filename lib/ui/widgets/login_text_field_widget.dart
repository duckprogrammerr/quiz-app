import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/mobile_controller.dart';
import 'package:quiz_app/ui/widgets/countries_dropdown.dart';
import 'package:quiz_app/utils/app_style.dart';

class LoginTextFieldWidget extends StatelessWidget {
  final MobileController mobileController = Get.find();
  LoginTextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'رقم الجوال',
          textAlign: TextAlign.right,
          style: AppStyle.bodyTextStyle,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
              border: Border.all(color: AppStyle.blackColor, width: 1),
              borderRadius: BorderRadius.circular(4)),
          child: Row(
            children: [
              CountriesDropdown(mobileController: mobileController),
              Flexible(
                flex: 3,
                child: TextField(
                  controller: mobileController.phoneNumberController,
                  style: AppStyle.bodyTextStyle,
                  textDirection: TextDirection.ltr,
                  textAlignVertical: TextAlignVertical.center,
                  cursorHeight: 25,
                  keyboardType: TextInputType.phone,
                  inputFormatters: const [],
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
