import 'package:flutter/material.dart';
import 'package:furniture_store/view/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "switzer-cufonfonts",
        primarySwatch: Colors.blueGrey,
        bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.transparent),
      ),
      // routes: appRoutes,
      // initialRoute: RoutesName.splashScreen,
      home: const OnBoardingScreen(),
    );
  }
}
