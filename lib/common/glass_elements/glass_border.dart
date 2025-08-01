import 'package:flutter/material.dart';

class GlassBorder {
  static BoxDecoration decoration(
    BuildContext context,
    double borderRadius,
    double borderWidth,
  ) {
    return BoxDecoration(
      color: Color(0x01FFFFFF),
      borderRadius: BorderRadiusGeometry.circular(borderRadius),
      border: Border.all(
        strokeAlign: BorderSide.strokeAlignInside,
        color: Colors.white.withAlpha((255 / 100 * 30).round()),
        width: borderWidth,
      ),
    );
  }
}
