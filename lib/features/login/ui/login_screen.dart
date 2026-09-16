import 'package:doctor/core/theming/styles.dart';
import 'package:doctor/core/widgets/app_text_button.dart';
import 'package:doctor/core/widgets/app_text_from_field.dart';
import 'package:doctor/features/login/ui/widgets/already_have_account_text.dart';
import 'package:doctor/features/login/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BlueBold),
                Gap(8.h),
                Text(
                  'We\'re excited to have you back, can\'t wait to \nsee what you\'ve been up to since you last\nlogged in.',
                  style: TextStyles.font14GreyRegular,
                ),
                Gap(36.h),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      AppTextFormField(hintText: "Email"),
                      Gap(18.h),
                      AppTextFormField(
                        hintText: "Password",
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      Gap(24.h),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                      Gap(40.h),

                      AppTextButton(
                        buttonText: "Login",
                        onPressed: () {},
                        textStyle: TextStyles.font16whiteSemiBold,
                      ),
                      Gap(16.h),
                      TermsAndConditionsText(),
                      Gap(60.h),
                      AlreadyHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
