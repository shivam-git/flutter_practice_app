import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final kHintTextStyle = GoogleFonts.openSans(color: Colors.white54,);

final kLabelStyle = GoogleFonts.openSans(
    color: Colors.white, fontWeight: FontWeight.bold,  fontSize: 12.0);

final kBoxDecorations = BoxDecoration(
    color: Color(0xFF6CA8F1),
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(color: Colors.black12, blurRadius: 6.0, offset: Offset(0, 2))
    ]);

var apiKey = '14965763-16f1d3d7919f9c06f5c90af44';