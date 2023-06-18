import 'package:flutter/material.dart';

class CustomColors {
  static CustomColors? _instance;

  CustomColors._();

  static CustomColors get instance {
    _instance ??= CustomColors._();
    return _instance!;
  }

  Color get black => const Color(0xFF1A1A1A);
  Color get black25 => black.withOpacity(0.25);
  Color get black50 => black.withOpacity(0.50);
  Color get black75 => black.withOpacity(0.75);

  Color get cyan => const Color(0xFF06D6A0);
  Color get cyan25 => cyan.withOpacity(0.25);
  Color get cyan50 => cyan.withOpacity(0.50);
  Color get cyan75 => cyan.withOpacity(0.75);

  Color get orange => const Color(0xFFFF7D00);
  Color get orange25 => orange.withOpacity(0.25);
  Color get orange50 => orange.withOpacity(0.50);
  Color get orange75 => orange.withOpacity(0.75);

  Color get blue => const Color(0xFF0582CA);
  Color get blue25 => blue.withOpacity(0.25);
  Color get blue50 => blue.withOpacity(0.50);
  Color get blue75 => blue.withOpacity(0.75);
}

extension CustomColorsExtension on BuildContext {
  CustomColors get color => CustomColors.instance;
}
