import 'package:flutter/material.dart';

abstract class ColorsTextApp {
  //Seguir exemplo do branco
  Color get branco;
  Color get azul;
  Color get preto;
  Color get cinza;
  Color get cinzaEscuro;
}

class ColorsTextAppDefault implements ColorsTextApp {
  @override
  Color get branco => const Color(0xFFFFFFFF);
  @override
  Color get azul => const Color(0xFF0582ca);
  @override
  Color get preto => const Color(0xFF1A1A1A); 
  @override
  Color get cinza => const Color(0xFFEAEAEA);
  @override
  Color get cinzaEscuro => const Color(0xFF656565);
}