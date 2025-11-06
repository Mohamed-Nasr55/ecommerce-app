import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerceapp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class LangIcon extends StatelessWidget {
  const LangIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (context.locale.languageCode == 'en') {
          context.setLocale(const Locale('ar'));
        } else {
          context.setLocale(const Locale('en'));
        }
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: CircleAvatar(
          backgroundColor: AppColors.primaryColor.withAlpha(40),
          child: Icon(Icons.language, color: AppColors.primaryColor),
        ),
      ),
    );
  }
}
