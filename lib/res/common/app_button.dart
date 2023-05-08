import 'package:flutter/material.dart';
import 'package:furniture_store/res/constant/app_colors.dart';
import 'package:furniture_store/res/constant/app_strings.dart';

class AppButton extends StatelessWidget {
  const AppButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 327,
      decoration: BoxDecoration(
        color: AppColors.themeColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: InkWell(
        onTap: () {},
        child: const Center(
          child: Text(
            AppStrings.buttonText,
            style: TextStyle(color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
