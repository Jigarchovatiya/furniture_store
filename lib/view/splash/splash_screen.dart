import 'dart:async';

import 'package:flutter/material.dart';
import 'package:furniture_store/res/constant/app_assets.dart';
import 'package:furniture_store/res/constant/app_colors.dart';
import 'package:furniture_store/res/constant/app_strings.dart';

import '../../utils/routes/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(context, RoutesName.onBoardingScreen, (route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.logo,
              height: 100,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            const Text(
              AppStrings.logoText,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
