import 'package:flutter/material.dart';

import 'Marcus_Inspired/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding UIs',
      debugShowCheckedModeBanner: false,
      home: screens['MarcusInspired'],
    );
  }
}

Map<String, Widget> screens = {
  'MarcusInspired': MarcusInspired(),
};
