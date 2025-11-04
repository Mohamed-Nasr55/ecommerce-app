import 'package:ecommerceapp/core/helpers/extensions.dart';
import 'package:ecommerceapp/core/theme/app_colors.dart';
import 'package:ecommerceapp/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String text;
  final void Function()? onpressed;
  final double width;
  final double height;
  const AppButton({
    super.key,
    required this.text,
    this.onpressed,
    this.width = double.infinity,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      height: height.h,
      child: TextButton(
        onPressed: onpressed,
        style: TextButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(borderRadius: 10.radius),
        ),
        child: Text(text, style: AppTextStyle.font16700white),
      ),
    );
  }
}
