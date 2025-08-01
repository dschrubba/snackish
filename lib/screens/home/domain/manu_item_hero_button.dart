import 'package:flutter/material.dart';
import 'package:jp_app/themes/colors.dart';
import 'package:jp_app/themes/styles.dart';

class ManuItemHeroButton extends StatelessWidget {
  static const double borderRadius = 10.0;
  static const double borderWidth = 1.5;

  final Gradient buttonGradient = RadialGradient(
    center: AlignmentGeometry.xy(1, 1),
    radius: 2,
    colors: [
      SnackishColors.actionBtnGradientA,
      SnackishColors.actionBtnGradientB,
    ],
  );

  final Gradient buttonBorderGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topRight,
    colors: [Color(0x7F000000), Color(0x7FFFFFFF)],
  );

  final BoxShadow innerShadowA = BoxShadow(
    color: SnackishColors.actionBtnInnerShdwA,
    offset: Offset(0, -3),
    blurRadius: 24,
  );

  final BoxShadow innerShadowB = BoxShadow(
    color: SnackishColors.actionBtnInnerShdwB,
    offset: Offset(0, 15),
    blurRadius: 15,
  );

  final BoxShadow outerGlow = BoxShadow(
    color: SnackishColors.actionBtnGlow,
    offset: Offset(0, 30),
    blurRadius: 90,
  );

  final double width;
  final double height;
  final String label;

  ManuItemHeroButton({
    super.key,
    this.width = 104,
    this.height = 40,
    this.label = "Add to order",
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width + borderWidth,
      height: height + borderWidth,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [outerGlow]
        ),
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(borderRadius),
          child: Stack(
            children: [
              /* Main Container */
              Container(
                /* Container as fake border for gradient */
                decoration: BoxDecoration(gradient: buttonGradient),
                child: Container(
                  decoration: BoxDecoration(
                    backgroundBlendMode: BlendMode.overlay,
                    gradient: buttonBorderGradient,
                  ),
                  /* Padding for fake border */
                  child: Padding(
                    padding: const EdgeInsets.all(borderWidth),
                    /* Button Surface */
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          borderRadius - (borderWidth / 2.0),
                        ),
                        gradient: buttonGradient,
                      ),
                    ),
                  ),
                ),
              ),
              /* Inner Shadow Effects */
              Padding(
                padding: const EdgeInsets.all(borderWidth),
                child: Opacity(
                  opacity: 0.25,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        innerShadowA,
                        innerShadowB,
                        ]
                      )
                    ),
                ),
              ),
              /* Actual Button Contant */
              Center(
                child: Text(
                  label,
                  style: SnackishStyles.buttonLabelMedium.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              /* Ripple Effect Overlay */
              Material(
                color: Colors.transparent,
                child: InkWell(onTap: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
