import 'package:flutter/material.dart';
import 'package:jp_app/themes/colors.dart';

class GradientContainer extends Container {

  final List<Color> colors;
  final double width;
  final double height;
  final AlignmentGeometry gradientBegin;
  final AlignmentGeometry gradientEnd;

  GradientContainer({super.key, super.child, 
    this.width = double.infinity, 
    this.height = double.infinity,
    this.gradientBegin = const AlignmentGeometry.xy(0.5, 0.5),
    this.gradientEnd = const AlignmentGeometry.xy(0.5, 4),
    this.colors = const [
    SnackishColors.darkBlueGradientB,
    SnackishColors.darkBlueGradientA,
    ]
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: gradientBegin,
          end: gradientEnd,
          colors: colors
        ),
      ),
      child: child,
    );
  }
}