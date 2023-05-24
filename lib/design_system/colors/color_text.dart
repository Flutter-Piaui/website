import 'package:flutter/material.dart';

abstract class ColorsTextApp {
  //Seguir exemplo do branco
  Color get white;
  Color get branco; //remover
  Color get blue;
  Color get black;
  Color get gray;
  Color get grayDark;
}

class ColorsTextAppDefault implements ColorsTextApp {
  @override
  Color get white => const Color(0xFFFFFFFF);
  @override
  Color get branco => const Color(0xFFFFFFFF);
  @override
  Color get blue => const Color(0xFF0582ca);
  @override
  Color get black => const Color(0xFF1A1A1A); 
  @override
  Color get gray => const Color(0xFFEAEAEA);
  @override
  Color get grayDark => const Color(0xFF656565);
}