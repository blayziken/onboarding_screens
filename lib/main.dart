import 'dart:io';
import 'package:flutter/material.dart';
import 'Marcus_Inspired/home.dart';
import 'WhiteFang/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Widget? currentScreen = screens['MarcusInspired'];
  @override
  Widget build(BuildContext context) {
    // currentScreen == WhiteFang()
    //     ? SystemChrome.setSystemUIOverlayStyle(
    //         SystemUiOverlayStyle(
    //           statusBarColor: Colors.transparent,
    //           statusBarIconBrightness: Brightness.dark,
    //           statusBarBrightness: Platform.isAndroid ? Brightness.dark : Brightness.light,
    //           systemNavigationBarColor: Colors.white,
    //           systemNavigationBarDividerColor: Colors.grey,
    //           systemNavigationBarIconBrightness: Brightness.dark,
    //         ),
    //       )
    //     : null;
    return MaterialApp(
      title: 'Onboarding UIs',
      debugShowCheckedModeBanner: false,
      home: screens['WhiteFang'],
    );
  }
}

Map<String, Widget> screens = {
  'MarcusInspired': MarcusInspired(),
  'WhiteFang': WhiteFang(),
};
