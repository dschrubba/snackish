import 'dart:ui';
import 'package:flutter/material.dart';

class GlassBackdrop extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? child;
  const GlassBackdrop({
    super.key,
    this.child,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 32, sigmaY: 32, tileMode: TileMode.mirror),
      child: SizedBox(width: width, height: height, child: child),
    );
  }
}
