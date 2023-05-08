import 'package:flutter/material.dart';
import 'package:furniture_store/res/constant/app_colors.dart';
import 'package:furniture_store/res/constant/app_strings.dart';
import 'package:furniture_store/view/onboarding/page_view/view_one.dart';
import 'package:furniture_store/view/onboarding/page_view/view_three.dart';
import 'package:furniture_store/view/onboarding/page_view/view_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(initialPage: 0);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(top: 80),
              child: PageView(
                controller: pageController,
                children: const [
                  ViewOne(),
                  ViewTwo(),
                  ViewThree(),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.5,
                ),
                Center(
                  child: SmoothPageIndicator(
                      controller: pageController, // PageController
                      count: 3,
                      effect: const JumpingDotEffect(
                        activeDotColor: AppColors.themeColor,
                        dotHeight: 10,
                        dotWidth: 10,
                      ), // your preferred effect
                      onDotClicked: (index) {}),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.all(10),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                AppStrings.skip,
                style: TextStyle(color: AppColors.skipColor, fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            CircleAvatar(
              backgroundColor: AppColors.themeColor,
              radius: 40,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
