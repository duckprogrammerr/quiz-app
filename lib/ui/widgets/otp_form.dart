import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/utils/app_style.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _CustomTextFormField(
            onChange: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
          const _CustomTextFormField(),
          const _CustomTextFormField(),
          _CustomTextFormField(
            onChange: (value) {
              if (value.length == 1) {
                FocusScope.of(context).unfocus();
              } else {
                FocusScope.of(context).previousFocus();
              }
            },
          ),
        ]),
      ),
    );
  }
}

class _CustomTextFormField extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Function(String)? onChange;

  const _CustomTextFormField({
    Key? key,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        border: Border.all(color: AppStyle.blackColor, width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: TextFormField(
          textInputAction: TextInputAction.next,
          validator: (value) {
            if (value!.isEmpty) {
              return '';
            }
            return null;
          },
          onChanged: (value) {
            if (onChange != null) {
              onChange!(value);
            } else {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              } else {
                FocusScope.of(context).previousFocus();
              }
            }
          },
          onSaved: (p4) {},
          style: AppStyle.bodyTextStyle,
          showCursor: false,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          textAlignVertical: TextAlignVertical.center,
          decoration: const InputDecoration(border: InputBorder.none),
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
    );
  }
}
