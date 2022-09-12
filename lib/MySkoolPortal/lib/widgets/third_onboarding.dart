import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding3 extends StatefulWidget {
  final Function() notifyParent;

  const Onboarding3({Key? key, required this.notifyParent}) : super(key: key);
  @override
  State<Onboarding3> createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  // For storing hasSeen Onboard
  // FlutterSecureStorage storage = FlutterSecureStorage();

  void finish() async {
    // await storage.write(key: 'seenOnboard', value: 'seen');

    // Navigator.of(context).pushReplacement(
    //   MaterialPageRoute(
    //     builder: (BuildContext context) => SearchList(),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            colors: <Color>[Color(0XFF0dcaf0), (Colors.indigo[800])!],
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
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/svg/onboard3.svg',
                  height: media.height / 1.8,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            SizedBox(height: 50), // Spacer()

            Center(
              child: Text(
                'Simplified, Robust and Secure',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white, // Theme.of(context).textTheme.bodyText1!.color, // Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  // letterSpacing: 1,
                ),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              child: Text(
                'Giving you a beautiful experience, while we sweat small things.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.white, // Theme.of(context).textTheme.subtitle2!.color,
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Color(0XFF3160d8),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: finish,
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
