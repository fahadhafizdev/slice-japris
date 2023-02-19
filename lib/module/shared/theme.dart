import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color cGrey = const Color(0xffF6F6F6);
Color cBlack = Colors.black;
Color cBlue = const Color(0xff000080);
Color cBlue2 = const Color(0xff2214EB);

// ignore: prefer_typing_uninitialized_variables
var tinggi;
// ignore: prefer_typing_uninitialized_variables
var lebar;

//NOTE : Text Weight
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

//NOTE : Text Style

TextStyle cBlackTextStyle = GoogleFonts.poppins(color: cBlack);
TextStyle cBlueTextStyle = GoogleFonts.poppins(color: cBlue);
TextStyle cBlue2TextStyle = GoogleFonts.poppins(color: cBlue2);
TextStyle cWhiteTextStyle = GoogleFonts.poppins(color: Colors.white);

final ButtonStyle btnDefault = ElevatedButton.styleFrom(
  backgroundColor: cBlue,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    ),
  ),
);

final ButtonStyle btnHome = ElevatedButton.styleFrom(
  backgroundColor: Colors.white,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    ),
  ),
);
