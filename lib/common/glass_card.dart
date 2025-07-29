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
      borderRadius: BorderRadiusGeometry.circular(borderRadius),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0x01FFFFFF),  
          border: Border.all(
            strokeAlign: BorderSide.strokeAlignInside,
            color: Colors.white, 
            width: borderWidth)
        ),
        child:  BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 32,
          sigmaY: 32
        ),
        child: Padding(padding: EdgeInsetsGeometry.all(32),child:  child),
      ),
      )
    );
  }
}