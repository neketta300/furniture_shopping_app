// responsive.dart
import 'package:flutter/material.dart';

class Responsive {
  final BuildContext context;

  Responsive(this.context);

  // Текущие размеры экрана
  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;

  // Масштаб по ширине
  double wp(double figmaSize) => width * (figmaSize / 375);

  // Масштаб по высоте
  double hp(double figmaSize) => height * (figmaSize / 812);

  // Масштаб шрифта (по ширине или минимальному)
  double sp(double figmaFontSize) => wp(figmaFontSize);

  // Адаптивный отступ
  double get padding => wp(16);
}
