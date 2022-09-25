import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/ui/widgets/custom_button.dart';
import 'package:quiz_app/utils/app_style.dart';

class AddNameScreen extends StatelessWidget {
  const AddNameScreen({Key? key}) : super(key: key);

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
            TextFormField(
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
            CustomButton(onPressed: () {}, text: 'تحقق'),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
