import 'package:ecommerceapp/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class ResendOtpcodeWidget extends StatelessWidget {
  const ResendOtpcodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Resend Code",
                    style: AppTextStyle.font12w400primary,
                  ),
                ),
              );
  }
}