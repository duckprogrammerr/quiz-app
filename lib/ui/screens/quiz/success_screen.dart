import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/ui/screens/main_screen.dart';
import 'package:quiz_app/ui/widgets/custom_button.dart';
import 'package:quiz_app/utils/app_style.dart';
import 'package:share_plus/share_plus.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: SvgPicture.asset('assets/images/logo.svg')),
        body: Padding(
            padding: const EdgeInsets.all(AppStyle.padddin - 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: SvgPicture.asset('assets/icons/exit.svg'),
                    onPressed: () => Get.off(
                      () => const MainScreen(),
                    ),
                  ),
                ),
                const Spacer(),
                Image.asset('assets/icons/finish-flag.png'),
                const Spacer(),
                const Text('اكملت', style: AppStyle.bodyTextStyle),
                Text(Get.arguments.toString(), style: AppStyle.titleTextStyle),
                const Text(
                  'من الإجابات الصحيحة',
                  style: AppStyle.bodyTextStyle,
                ),
                const Spacer(),
                CustomButton(
                  padding: AppStyle.padddin * 3.5,
                  child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('شارك',
                            style: AppStyle.bodyTextStyle
                                .copyWith(color: Colors.white)),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.share_outlined,
                          size: 40,
                        ),
                      ]),
                  onPressed: () {
                    Share.share(
                        'I answered ${Get.arguments.toString()} correct answers in QuizU!');
                  },
                ),
                const Spacer(flex: 3),
              ],
            )));
  }
}
