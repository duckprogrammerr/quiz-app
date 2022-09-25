import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phone_number/phone_number.dart';
import 'package:quiz_app/models/country.dart';
import 'package:quiz_app/models/country_list.dart';
import 'package:quiz_app/ui/screens/auth/otp_screen.dart';
import 'package:quiz_app/utils/app_style.dart';

class MobileController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();
  Rx<Country> selectedCountry = Country().obs;
  final plugin = PhoneNumberUtil();

  @override
  onInit() {
    getDeviceRegion();
    super.onInit();
  }

  getDeviceRegion() async {
    String deviceRegion = await plugin.carrierRegionCode();

    selectedCountry(Countries.countryList
        .firstWhere((element) => element.code == deviceRegion.toUpperCase()));
  }

  updateSelectedCountry(String code) {
    selectedCountry(
        Countries.countryList.firstWhere((element) => element.code == code));
  }

  Future<void> validatePhoneNumber() async {
    try {
      bool isNumberVaild = await plugin.validate(phoneNumberController.text,
          regionCode: selectedCountry.value.code);

      if (isNumberVaild) {
        Get.off(const OtpScreen());
      } else {
        phoneNumberController.text = '';

        Get.showSnackbar(
          AppStyle().erorrMsgSnackBar(
            'الرقم المدخل غير صحيح',
          ),
        );
      }
    } catch (e) {
      if (phoneNumberController.text == '') {
        Get.showSnackbar(AppStyle().erorrMsgSnackBar(
          'ادخل رقم',
        ));
      }
    } finally {
      if (phoneNumberController.text.length == 1) {
        Get.showSnackbar(
          AppStyle().erorrMsgSnackBar(
            'الرقم المدخل غير صحيح',
          ),
        );
      }
    }
  }
}
