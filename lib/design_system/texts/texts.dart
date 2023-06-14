import 'package:flutter/material.dart';
import 'package:flutter_piaui_website/design_system/colors/custom_colors.dart';
import 'package:flutter_piaui_website/design_system/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextApp {
  TextStyle get poppins20;
  TextStyle get poppins22;
  TextStyle get poppins24;
  TextStyle get poppins25;
  TextStyle get poppins30;
  TextStyle get poppins35;
  TextStyle get poppins75;
  TextStyle get poppins95;

  TextStyle get basic;
  TextStyle get menuFlutter;
  TextStyle get menuPiaui;
  TextStyle get menuSubtitle;
  TextStyle get dataCard;
  TextStyle get titleCard;
  TextStyle get learnMore;
}

class TextAppDefault implements TextApp {
  @override
  TextStyle get poppins20 => GoogleFonts.poppins(
        color: ThemeApp.colors.branco,
        fontSize: 20,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.017,
      );
  //poppins22
  @override
  TextStyle get poppins22 => GoogleFonts.poppins(
        color: ThemeApp.colors.branco,
        fontSize: 22,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.014,
      );

  @override
  TextStyle get poppins24 => GoogleFonts.poppins(
        color: ThemeApp.colors.branco,
        fontSize: 24,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.016,
      );

  @override
  TextStyle get poppins25 => GoogleFonts.poppins(
        color: ThemeApp.colors.branco,
        fontSize: 25,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.019,
      );

  @override
  TextStyle get poppins30 => GoogleFonts.poppins(
        color: ThemeApp.colors.branco,
        fontSize: 30,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.022,
      );

  @override
  TextStyle get poppins35 => GoogleFonts.poppins(
        color: ThemeApp.colors.branco,
        fontSize: 35,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.021,
      );

  @override
  TextStyle get poppins75 => GoogleFonts.poppins(
        color: ThemeApp.colors.branco,
        fontSize: 75,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.022,
      );

  @override
  TextStyle get poppins95 => GoogleFonts.poppins(
        color: ThemeApp.colors.branco,
        fontSize: 95,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.022,
      );

  @override
  TextStyle get basic => GoogleFonts.poppins(
        color: ThemeApp.colors.branco,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get menuFlutter => GoogleFonts.poppins(fontSize: 40, fontWeight: FontWeight.bold, color: ThemeApp.colors.blue);

  @override
  TextStyle get menuPiaui => GoogleFonts.poppins(color: ThemeApp.colors.black, fontSize: 40, fontWeight: FontWeight.bold);

  @override
  TextStyle get menuSubtitle => GoogleFonts.poppins(color: ThemeApp.colors.black, fontSize: 25, fontWeight: FontWeight.w600);

  @override
  TextStyle get dataCard => GoogleFonts.poppins(color: CustomColors.instance.black25, fontSize: 25, fontWeight: FontWeight.w500, letterSpacing: 0.5);

  @override
  TextStyle get learnMore => GoogleFonts.poppins(color: CustomColors.instance.blue, fontSize: 25, fontWeight: FontWeight.w700, letterSpacing: 0.5);

  @override
  TextStyle get titleCard => GoogleFonts.poppins(color: CustomColors.instance.black, fontSize: 35, fontWeight: FontWeight.w900, letterSpacing: 0.7);
}
