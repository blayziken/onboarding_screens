import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding0 extends StatefulWidget {
  const Onboarding0({Key? key}) : super(key: key);

  @override
  State<Onboarding0> createState() => _Onboarding0State();
}

class _Onboarding0State extends State<Onboarding0> {
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
                  'assets/svg/initial_onboard.svg',
                  height: media.height / 1.8,
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            SizedBox(height: 50), // Spacer()

            Center(
              child: Text(
                'Welcome to MySkool Portal',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
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
                'Managing your school profile and records has never been so easy.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.white, // Theme.of(context).textTheme.subtitle2!.color,
                ), // regular
              ),
            ),
            // verticalSpaceMedium,
            Spacer(),
          ],
        ),
      ),
    );
  }
}
