import 'package:flutter/material.dart';

import '../../../res/constant/app_assets.dart';
import '../../../res/constant/app_colors.dart';
import '../../../res/constant/app_strings.dart';

class ViewThree extends StatelessWidget {
  const ViewThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            AppAssets.chairThree,
            height: MediaQuery.of(context).size.height / 2.4,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          const Text(
            textAlign: TextAlign.center,
            AppStrings.viewThreeDetail,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
              color: AppColors.viewDetailColor,
            ),
          ),
        ],
      ),
    );
  }
}
