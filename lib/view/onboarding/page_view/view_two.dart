import 'package:flutter/material.dart';

import '../../../res/constant/app_assets.dart';
import '../../../res/constant/app_colors.dart';
import '../../../res/constant/app_strings.dart';

class ViewTwo extends StatelessWidget {
  const ViewTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            AppAssets.chairTwo,
            height: MediaQuery.of(context).size.height / 2.4,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          const Text(
            textAlign: TextAlign.center,
            AppStrings.viewTwoDetail,
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
