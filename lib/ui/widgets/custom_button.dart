import 'package:flutter/material.dart';
import 'package:quiz_app/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? padding;
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? AppStyle.padddin),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          primary: AppStyle.primaryColor,
          minimumSize: const Size.fromHeight(55),
        ),
        child: Text(
          text,
          style: AppStyle.titleTextStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
