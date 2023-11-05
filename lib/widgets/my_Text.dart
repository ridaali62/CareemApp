import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  const MyText({super.key, this.text, this.c, this.w, this.size});
  final String? text;
  final Color? c;
  final FontWeight? w;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Text(text ?? "CAB",
        style: GoogleFonts.rubik(
          textStyle: TextStyle(
              color: c ?? Colors.white,
              fontSize: size ?? 100,
              fontWeight: w ?? FontWeight.w600),
        ));
  }
}
