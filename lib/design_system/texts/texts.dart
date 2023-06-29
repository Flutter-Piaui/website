import 'package:flutter/material.dart';
import 'package:flutter_piaui_website/design_system/colors/custom_colors.dart';
import 'package:flutter_piaui_website/design_system/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextApp {
  //Seguir exemplo texto basico
  TextStyle get basic;
  TextStyle get menuFlutter;
  TextStyle get menuPiaui;
  TextStyle get menuSubtitle;
  TextStyle get dataCard;
  TextStyle get titleCard;
  TextStyle get learnMore;
}

class TextAppDefault implements TextApp {
  //Obs: Alterar fonte, coloquei apenas para entenderem como declarar
  @override
  TextStyle get basic => GoogleFonts.poppins(
        color: ThemeApp.colors.branco,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );

  @override
  TextStyle get menuFlutter => GoogleFonts.poppins(
      fontSize: 40, fontWeight: FontWeight.bold, color: ThemeApp.colors.blue);

  @override
  TextStyle get menuPiaui => GoogleFonts.poppins(
      color: ThemeApp.colors.black, fontSize: 40, fontWeight: FontWeight.bold);

  @override
  TextStyle get menuSubtitle => GoogleFonts.poppins(
        color: ThemeApp.colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get dataCard => GoogleFonts.poppins(
      color: CustomColors.instance.black25,
      fontSize: 25,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5);

  @override
  TextStyle get dataSCard => GoogleFonts.poppins(
      color: CustomColors.instance.black25,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5);

  @override
  TextStyle get learnMore => GoogleFonts.poppins(
      color: CustomColors.instance.blue,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.5);

  @override
  TextStyle get titleCard => GoogleFonts.poppins(
        color: CustomColors.instance.black,
        fontSize: 35,
        fontWeight: FontWeight.w900,
        letterSpacing: 0.7,
      );

  @override
  TextStyle get textRegular => GoogleFonts.poppins(
        color: CustomColors.instance.black,
        fontSize: 20,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.03,
        height: 1.2,
      );

  @override
  TextStyle get textSRegular => GoogleFonts.poppins(
        color: CustomColors.instance.black,
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.03,
        height: 1.2,
      );

  @override
  TextStyle get textMMedium => GoogleFonts.poppins(
        color: CustomColors.instance.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.03,
        height: 1.2,
      );

  @override
  TextStyle get textTMedium => GoogleFonts.poppins(
        color: CustomColors.instance.black,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.03,
        height: 1.2,
      );
}
