import 'package:ecommerceapp/core/helpers/extensions.dart';
import 'package:ecommerceapp/core/theme/app_colors.dart';
import 'package:ecommerceapp/core/theme/app_text_style.dart';
import 'package:ecommerceapp/features/auth/ui/widgets/custom_text_formfeild.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _phoneController;

  @override
  void initState() {
    _phoneController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  80.height,
                  Text("Login", style: AppTextStyle.font24w700),
                  23.height,
                  Text("Welcome back", style: AppTextStyle.font20w700),
                  8.height,

                  Text(
                    "To Keep connected with us ... please login to your account",
                    style: AppTextStyle.font14w700.copyWith(
                      color: AppColors.blackColor.withAlpha(70),
                    ),
                  ),
                  35.height,
                  Text("phone number", style: AppTextStyle.font15bold),
                  10.height,
                  CustomTextFormfeild(
                    controller: _phoneController,
                    hintText: "(+20) ___________",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
