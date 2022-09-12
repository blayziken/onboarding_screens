import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TextButtonArrow extends StatefulWidget {
  final String text;
  void Function() fn;
  Color? colors;
  TextButtonArrow({
    Key? key,
    required this.text,
    required this.fn,
    required this.colors,
  }) : super(key: key);

  @override
  _TextButtonArrowState createState() => _TextButtonArrowState();
}

class _TextButtonArrowState extends State<TextButtonArrow> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return InkWell(
      onTap: widget.fn,
      child: SizedBox(
        height: media.height / 12, // SizeConfig.screenHeight / 12,
        child: Padding(
          padding: EdgeInsets.all(media.height * 0.018),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                widget.text,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  // fontWeight: FontWeight.w600,
                  color: widget.colors,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: widget.colors,
              )
            ],
          ),
        ),
      ),
    );
  }
}
