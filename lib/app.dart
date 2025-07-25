import 'package:cmc_food/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:cmc_food/utils/theme/theme.dart';
import 'package:get/get.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: CAppTheme.lightTheme,
      darkTheme: CAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}