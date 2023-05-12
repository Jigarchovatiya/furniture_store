import 'package:flutter/material.dart';
import 'package:furniture_store/res/constant/app_assets.dart';
import 'package:furniture_store/res/constant/app_colors.dart';
import 'package:furniture_store/res/constant/app_strings.dart';

class ViewOne extends StatelessWidget {
  const ViewOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            AppAssets.chairOne,
            height: MediaQuery.of(context).size.height / 2.4,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          const Text(
            textAlign: TextAlign.center,
            AppStrings.viewOneDetail,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: AppColors.appTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
