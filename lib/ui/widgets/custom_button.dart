import 'package:flutter/material.dart';
import 'package:quiz_app/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppStyle.padddin),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          primary: AppStyle.primaryColor,
          minimumSize: const Size.fromHeight(50),
        ),
        child: Text(
          text,
          style: AppStyle.titleTextStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
