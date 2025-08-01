import 'package:flutter/material.dart';
import 'package:jp_app/common/glass_elements/glass_backdrop.dart';
import 'package:jp_app/common/glass_elements/glass_border.dart';
import 'package:jp_app/themes/styles.dart';

class GlassButton extends StatefulWidget {
  static const double borderRadius = 90;
  final double? height;
  final double? width;
  final String? label;
  final IconData? iconLeading;
  final IconData? iconTrailing;
  final Widget? child;
  final EdgeInsetsGeometry padding;
  const GlassButton({
    super.key,
    this.label,
    this.iconLeading,
    this.iconTrailing,
    this.child,
    this.height = 48,
    this.width,
    this.padding = const EdgeInsetsGeometry.symmetric(
      horizontal: 20,
      vertical: 10,
    ),
  });

  @override
  State<GlassButton> createState() => _GlassButtonState();
}

class _GlassButtonState extends State<GlassButton> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(GlassButton.borderRadius),
        child: Stack(
          children: [
            GlassBackdrop(),
            AnimatedOpacity(
              duration: Duration(milliseconds: 250),
              opacity: _selected ? 0.9 : 0.9, child: FittedBox(
                fit: BoxFit.fill,
                child: ColoredBox(color: Colors.red)
              )
              ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  setState(() {
                    _selected = !_selected;
                  });
                },
                child: Container(
                  height: 48,
                  decoration: GlassBorder.decoration(
                    context,
                    GlassButton.borderRadius,
                    1.5,
                  ),
                  child: Padding(
                    padding: widget.padding,
                    child: Row(
                      spacing: 8,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (widget.iconLeading != null)
                          (Icon(
                            widget.iconLeading,
                            size: 16,
                            color: SnackishStyles.buttonLabelMedium.color,
                          )),
                        if (widget.label != null)
                          (Text(
                            widget.label!,
                            style: SnackishStyles.buttonLabelMedium,
                          )),
                        if (widget.child != null) (widget.child!),
                        if (widget.iconTrailing != null)
                          (Icon(
                            widget.iconTrailing,
                            size: 16,
                            color: SnackishStyles.buttonLabelMedium.color,
                          )),
                      ],
                    ),
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
