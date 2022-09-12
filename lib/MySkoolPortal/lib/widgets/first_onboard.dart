import 'package:flutter/material.dart';

class Onboarding1 extends StatefulWidget {
  final Function() notifyParent;

  const Onboarding1({Key? key, required this.notifyParent}) : super(key: key);

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  // For storing hasSeen Onboard

  // void skip() async {
  //   await storage.write(key: 'seenOnboard', value: 'seen');

  //   Navigator.of(context).pushReplacement(
  //     MaterialPageRoute(
  //       builder: (BuildContext context) => SearchList(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            colors: <Color>[Color(0XFF0dcaf0), (Colors.indigo[800])!],
            // colors: <Color>[Color(0XFFFECD0F), Color(0XFFA5CE3A)],
          ),
        ),
        child: Column(
          children: [
            Container(
              height: media.height / 1.5,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white, // backgroundColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80), bottomRight: Radius.circular(80)),
                // border: Border.all(color: primaryColor, width: 1),
                image: DecorationImage(
                  image: AssetImage('assets/images/onboard1.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),

            SizedBox(height: 50), // Spacer()

            Center(
              child: Text(
                'Bills & Payments',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white, // Theme.of(context).textTheme.bodyText1!.color, // Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  // letterSpacing: 1,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              child: Text(
                'Check your bills and pay school fees without breaking a sweat.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ), // regular
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
