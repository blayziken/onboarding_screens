import 'package:flutter/material.dart';
import 'package:onboarding_screens/MySkoolPortal/lib/widgets/first_onboard.dart';

import 'widgets/initial_onboard.dart';
import 'widgets/second_onboard.dart';
import 'widgets/third_onboarding.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  refresh() {
    setState(() {
      if (_currentPage < 3) {
        _currentPage = _currentPage + 1;
        _pageController.jumpToPage(_currentPage);
      }
    });
  }

  void next() {
    setState(() {
      if (_currentPage < 4) {
        _currentPage = _currentPage + 1;
      }
    });
  }

  void skip() {}

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.004),
      height: isActive ? MediaQuery.of(context).size.height * 0.025 : MediaQuery.of(context).size.height * 0.015,
      width: isActive ? MediaQuery.of(context).size.width * 0.025 : MediaQuery.of(context).size.width * 0.015,
      decoration: BoxDecoration(color: isActive ? Color(0XFF3160d8) : Colors.grey[400], shape: BoxShape.circle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              physics: BouncingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: <Widget>[
                Onboarding0(),
                Onboarding1(notifyParent: refresh),
                Onboarding2(notifyParent: refresh),
                Onboarding3(notifyParent: refresh),
              ],
            ),
            _currentPage == 3
                ? SizedBox()
                : Positioned(
                    top: MediaQuery.of(context).size.height / 1.13,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: _buildPageIndicator(),
                        ),
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
