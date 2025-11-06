import 'package:ecommerceapp/core/helpers/extensions.dart';
import 'package:ecommerceapp/core/theme/app_colors.dart';
import 'package:ecommerceapp/core/theme/app_text_style.dart';
import 'package:ecommerceapp/features/auth/ui/widgets/app_button.dart';
import 'package:ecommerceapp/features/auth/ui/widgets/otp_form_feild.dart';
import 'package:ecommerceapp/features/auth/ui/widgets/resend_otpcode_widget.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification", style: AppTextStyle.font20w700),
        actions: [],
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              42.height,
              Text(
                "please enter the 4 digit code we have sent to your email",
                style: AppTextStyle.font16700black.copyWith(
                  color: AppColors.blackColor.withValues(alpha: 0.7),
                ),
              ),
              54.height,
              OtpFormFeild(),
              16.height,
              ResendOtpcodeWidget(),
              82.height,
              AppButton(text: "Verify"),
            ],
          ),
        ),
      ),
    );
  }
}
