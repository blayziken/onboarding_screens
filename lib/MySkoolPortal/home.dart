import 'package:flutter/material.dart';
import 'lib/onboard.dart';

class MySkoolPortal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Onboarding UI',
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}
