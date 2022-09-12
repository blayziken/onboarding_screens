import 'package:flutter/material.dart';

import 'lib/screens/onboarding_screen.dart';

class MarcusInspired extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Onboarding UI',
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
