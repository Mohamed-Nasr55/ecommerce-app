import 'package:ecommerceapp/core/theme/app_colors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyle {
  static TextStyle font12w400 = TextStyle(
    fontSize: 12.0.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
  );
  static TextStyle font13w500 = TextStyle(
    fontSize: 13.0.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
  );
  static TextStyle font14w700 = TextStyle(
    fontSize: 14.0.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );
  static TextStyle font15bold = TextStyle(
    fontSize: 15.0.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.blackColor,
  );
  static TextStyle font16700 = TextStyle(
    fontSize: 15.0.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );
  static TextStyle font20w700 = TextStyle(
    fontSize: 20.0.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );

  static TextStyle font24w700 = TextStyle(
    fontSize: 24.0.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );
}
