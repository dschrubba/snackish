import 'package:flutter/material.dart';
import 'package:jp_app/themes/colors.dart';
import 'package:jp_app/themes/styles.dart';

class OrderButton extends StatelessWidget {
  static const double borderRadius = 16;
  static const double borderWidth = 2;

  static const BoxShadow innerShadowA = BoxShadow(
    offset: Offset(0, -3),
    blurStyle: BlurStyle.inner,
    color: SnackishColors.orderNowBtnInnerShadowA,
    blurRadius: 24,
  );

  static const BoxShadow innerShadowB = BoxShadow(
    offset: Offset(0, 0),
    blurStyle: BlurStyle.inner,
    color: SnackishColors.orderNowBtnInnerShadowB,
    blurRadius: 15,
  );

  static const BoxShadow glow = BoxShadow(
    offset: Offset(0, 30),
    blurStyle: BlurStyle.normal,
    color: SnackishColors.orderNowBtnGlow,
    blurRadius: 90,
  );

  static const Gradient candyGradient = RadialGradient(
    radius: 4,
    center: AlignmentGeometry.xy(1, 3),
    colors: [
      SnackishColors.orderNowBtnGradientA,
      SnackishColors.orderNowBtnGradientB,
    ],
  );

  static const Gradient borderGradient = LinearGradient(
    colors: [
      SnackishColors.orderNowBtnStrokeA,
      SnackishColors.orderNowBtnStrokeB,
    ],
  );

  static TextButton textButton(String text) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        padding: WidgetStateProperty.all(EdgeInsets.all(1)),
        minimumSize: WidgetStateProperty.all(
          Size(double.infinity, double.infinity),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        ),
      ),
      child: Text(text, style: SnackishStyles.buttonLabelLarge),
    );
  }

  final double maxWidth;
  final String buttonText;

  const OrderButton({
    super.key,
    this.buttonText = "Order Now",
    this.maxWidth = 210,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 56, maxWidth: maxWidth),
      child: Stack(
        children: [
          ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadiusGeometry.circular(borderRadius),
            child: Stack(
              children: [
                // Background with candy gradient, needed as base color behind border
                Container(decoration: BoxDecoration(gradient: candyGradient)),
                // Button Border
                Container(decoration: BoxDecoration(gradient: borderGradient)),
                // Padding to simulate border
                Padding(
                  padding: EdgeInsetsGeometry.all(borderWidth),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(
                      borderRadius - (borderWidth / 2),
                    ),
                    child: Container(
                      decoration: BoxDecoration(gradient: candyGradient),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Glow
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusGeometry.circular(borderRadius),
              boxShadow: [glow],
            ),
          ),
          // Actual button for interaction
          textButton(buttonText),
        ],
      ),
    );
  }
}
