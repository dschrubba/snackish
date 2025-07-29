import 'dart:ui';

import 'package:flutter/material.dart';

class SnackishColors {

  /* */
  static const textLight            = Color(0xFFF2F5F4);
  static const textDark             = Color(0xFF21212D);

  /* Dark Blue Gradient */
  static const darkBlueGradientA    = Color(0xFF437F97);
  static const darkBlueGradientB    = Color(0xFF2F2B22);

  /* Liquid Gradient */
  static const liquidGradientA      = Color(0xFFE98796);
  static const liquidGradientB      = Color(0xFF8C5BEA);

  /* Order Now Button */
  static const orderNowBtnGradientA = Color(0xFFF69EA3);
  static const orderNowBtnGradientB = Color(0xFFE970C4);
  static const orderNowBtnStrokeA   = Color(0x7F000000);
  static const orderNowBtnStrokeB   = Color(0x7FFFFFFF);
  static final Gradient orderNowBtnGradient = RadialGradient(colors:  [orderNowBtnGradientA, orderNowBtnGradientB]);
  static final Gradient orderNowBtnStroke   = LinearGradient(colors: [orderNowBtnGradientA, orderNowBtnGradientB]);

}