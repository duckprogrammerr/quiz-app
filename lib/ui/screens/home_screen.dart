import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/ui/widgets/custom_button.dart';
import 'package:quiz_app/utils/app_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SvgPicture.asset('assets/images/logo.svg')),
      body: Padding(
        padding: const EdgeInsets.all(AppStyle.padddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'جاهز لاختبار ثقافتك؟',
              style: AppStyle.titleTextStyle,
            ),
            const SizedBox(
              height: AppStyle.padddin,
            ),
            CustomButton(
                padding: AppStyle.padddin * 2, onPressed: () {}, text: 'ابدا'),
            const SizedBox(
              height: AppStyle.padddin,
            ),
            const Text(
              'حاول حل اكبر قدر من الاسئلة في غضون دقيقتين',
              textAlign: TextAlign.center,
              style: AppStyle.bodyTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
