import 'package:flutter/material.dart';
import 'package:flutter_piaui_website/design_system/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextApp {
  //Seguir exemplo texto basico
  TextStyle get poppins20;
  TextStyle get poppins22;
  TextStyle get poppins24;
  TextStyle get poppins25;
  TextStyle get poppins30;
  TextStyle get poppins35;
  TextStyle get poppins75;
  TextStyle get poppins95;
}

class TextAppDefault implements TextApp {
  //Obs: Alterar fonte, coloquei apenas para entenderem como declarar
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
}
