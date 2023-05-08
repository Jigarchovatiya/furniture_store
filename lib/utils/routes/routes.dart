import 'package:flutter/material.dart';
import 'package:furniture_store/utils/routes/routes_name.dart';
import 'package:furniture_store/view/onboarding/onboarding_screen.dart';

import '../../view/onboarding/page_view/view_one.dart';
import '../../view/onboarding/page_view/view_three.dart';
import '../../view/onboarding/page_view/view_two.dart';
import '../../view/splash/splash_screen.dart';

Map<String, WidgetBuilder> appRoutes = {
  RoutesName.splashScreen: (context) => const SplashScreen(),
  RoutesName.onBoardingScreen: (context) => const OnBoardingScreen(),
  RoutesName.viewOne: (context) => const ViewOne(),
  RoutesName.viewTwo: (context) => const ViewTwo(),
  RoutesName.viewThree: (context) => const ViewThree(),
  // RoutesName.onBoarding: (context) => const OnBoardingScreen(),
  // RoutesName.continueWithScreen: (context) => const ContinueWithScreen(),
  // RoutesName.checkOutTwo: (context) => const CheckOutTwo(),
  // RoutesName.confirmEmail: (context) => const ConfirmEmail(),
  // RoutesName.emptyCart: (context) => const EmptyCart(),
  // RoutesName.home: (context) => const Home(),
  // RoutesName.favStore: (context) => const FavStore(),
  // RoutesName.cart: (context) => const Cart(),
  // RoutesName.profile: (context) => const Profile(),
  // RoutesName.bottomBar: (context) => const BottomBar(),
  // RoutesName.section: (context) => const Section(),
};
