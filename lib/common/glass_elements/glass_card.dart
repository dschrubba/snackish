import 'package:flutter/material.dart';
import 'package:jp_app/common/glass_elements/glass_backdrop.dart';
import 'package:jp_app/common/glass_elements/glass_border.dart';

class GlassCard extends StatelessWidget {
  static const double borderRadius = 32;
  static const double borderWidth = 1;
  final Widget child;
  const GlassCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadiusGeometry.circular(borderRadius),

        child: GlassBackdrop(
          child: Container(
            decoration: GlassBorder.decoration(
              context,
              borderRadius,
              borderWidth,
            ),
            child: Padding(padding: EdgeInsetsGeometry.all(24), child: child),
          ),
        ),
      ),
    );
  }
}
