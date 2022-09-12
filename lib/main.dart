import 'dart:io';
import 'package:flutter/material.dart';
import 'Marcus_Inspired/home.dart';
import 'MySkoolPortal/home.dart';
import 'WhiteFang/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding UIs',
      debugShowCheckedModeBanner: false,
      home: screens['MySkoolPortal'],
    );
  }
}

Map<String, Widget> screens = {
  'MarcusInspired': MarcusInspired(),
  'WhiteFang': WhiteFang(),
  'MySkoolPortal': MySkoolPortal(),
};
