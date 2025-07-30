import 'dart:ui';

import 'package:flutter/material.dart';

class GlassCard extends StatelessWidget {
  static const double borderRadius = 32;
  static const double borderWidth = 3;
  final Widget child;
  const GlassCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadiusGeometry.circular(borderRadius),
      child: BackdropFilter(
        blendMode: BlendMode.srcATop,
        filter: ImageFilter.blur(sigmaX: 32, sigmaY: 32),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0x01FFFFFF),
            borderRadius: BorderRadiusGeometry.circular(borderRadius),
            border: Border.all(
              strokeAlign: BorderSide.strokeAlignInside,
              color: Colors.white.withAlpha((255/100*30).round()),
              width: borderWidth,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsGeometry.all(32), child: child),
        ),
      ),
    );
  }
}
