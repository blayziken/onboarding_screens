import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding2 extends StatefulWidget {
  final Function() notifyParent;

  const Onboarding2({Key? key, required this.notifyParent}) : super(key: key);

  @override
  State<Onboarding2> createState() => _Onboarding2State();
}

class _Onboarding2State extends State<Onboarding2> {
  // For storing hasSeen Onboard
  // FlutterSecureStorage storage = FlutterSecureStorage();

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
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80), bottomRight: Radius.circular(80)),
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/svg/onboard2.svg',
                  height: media.height / 1.8,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            SizedBox(height: 50), // Spacer()

            Center(
              child: Text(
                'Results & Transcripts',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              child: Text(
                'Easy access to your results and transcripts anytime. Yes, even after graduation,  for life.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
