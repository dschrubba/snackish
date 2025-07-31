import 'package:flutter/material.dart';
import 'package:jp_app/common/glass_backdrop.dart';
import 'package:jp_app/common/glass_border.dart';

class GlassButton extends StatelessWidget {
  static const double borderRadius = 90;

  final String label;
  final IconData? icon;
  final Widget? child;
  final EdgeInsetsGeometry padding;
  const GlassButton({
    super.key,
    required this.label,
    this.icon,
    this.child,
    this.padding = const EdgeInsetsGeometry.all(16),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(GlassButton.borderRadius),
        child: Stack(
          children: [
            GlassBackdrop(),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  
                },
                child: Container(
                  decoration: GlassBorder.decoration(
                    context,
                    GlassButton.borderRadius,
                    1.5,
                  ),
                  child: Padding(
                    padding: padding,
                    child: child
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
