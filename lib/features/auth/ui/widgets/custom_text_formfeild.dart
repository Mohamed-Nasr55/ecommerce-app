import 'package:ecommerceapp/core/helpers/extensions.dart';
import 'package:ecommerceapp/core/theme/app_colors.dart';
import 'package:ecommerceapp/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormfeild extends StatelessWidget {
  final TextEditingController controller;
  final bool obsecuretext;
  final bool readOnly;
  final String? labelText;
  final String? hintText;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  const CustomTextFormfeild({
    super.key,
    required this.controller,
    this.obsecuretext = false,
    this.readOnly = false,
    this.labelText,
    this.hintText,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: 10.radius,
        boxShadow: [
          BoxShadow(
            color: AppColors.greyColor.withValues(alpha: 0.1),
            blurRadius: 10.0,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: 12.radius,
          boxShadow: [
            BoxShadow(
              color: AppColors.greyColor.withValues(alpha: 0.1),
              blurRadius: 4.0,
              spreadRadius: 4.0,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: TextFormField(
          controller: controller,
          obscureText: obsecuretext,
          readOnly: readOnly,
          validator: validator,
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            hintStyle: AppTextStyle.font13w500,
            labelStyle: AppTextStyle.font13w500,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: AppColors.whiteColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: 10.radius,
              borderSide: BorderSide(color: AppColors.greyColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: 10.radius,
              borderSide: BorderSide(color: AppColors.greyColor),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: 10.radius,
              borderSide: BorderSide(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
