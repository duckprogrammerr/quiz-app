import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/mobile_controller.dart';
import 'package:quiz_app/models/country_list.dart';

class CountriesDropdown extends StatelessWidget {
  const CountriesDropdown({
    Key? key,
    required this.mobileController,
  }) : super(key: key);

  final MobileController mobileController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
        child: DropdownButton<String>(
          underline: const SizedBox(),
          alignment: Alignment.bottomCenter,
          items: Countries.countryList
              .map(
                (e) => DropdownMenuItem<String>(
                  value: e.code,
                  child: Center(
                    child: Image.asset(
                      'assets/flags/${e.code!.toLowerCase()}.png',
                      width: 45,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
              .toList(),
          value: mobileController.selectedCountry.value.code,
          onChanged: (value) {
            mobileController.updateSelectedCountry(value!);
          },
        ),
      ),
    );
  }
}
