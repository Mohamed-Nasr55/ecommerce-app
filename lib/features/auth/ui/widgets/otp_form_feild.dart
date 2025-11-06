import 'dart:developer';

import 'package:ecommerceapp/core/helpers/extensions.dart';
import 'package:ecommerceapp/core/theme/app_colors.dart';
import 'package:ecommerceapp/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpFormFeild extends StatelessWidget {
  const OtpFormFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return  Pinput(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                defaultPinTheme: PinTheme(
                  width: 70.0.w,
                  height: 60.0.h,
                  textStyle: AppTextStyle.font20w700,
                  decoration: BoxDecoration(
                    borderRadius: 15.radius,
                    color: AppColors.greyColor.withAlpha(40),
                  ),
                ),
                validator: (s) {
                  return s == "5545" ? null : "pin is not correct";
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) => log(pin),
              );
  }
}