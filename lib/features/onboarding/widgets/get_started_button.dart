import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.push('/loginScreen');
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 52)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),

      child: Text("Get Started", style: TextStyles.font16WhiteSimeBolMedium),
    );
  }
}
