import 'package:flutter/material.dart';
import 'package:jp_app/common/blendmask.dart';
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

  final double maxWidth;
  final String buttonText;

  const OrderButton({
    super.key,
    this.buttonText = "Order Now",
    this.maxWidth = 250,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 64, maxWidth: maxWidth),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(borderRadius),
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    SnackishColors.orderNowBtnGradientA,
                    SnackishColors.orderNowBtnGradientB,
                  ],
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(borderRadius),
            child: Container(
              decoration: BoxDecoration(
                backgroundBlendMode: BlendMode.overlay,
                gradient: LinearGradient(
                  colors: [
                    SnackishColors.orderNowBtnStrokeA,
                    SnackishColors.orderNowBtnStrokeB,
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(borderWidth),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(
                borderRadius - (borderWidth / 2),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    radius: 4,
                    center: AlignmentGeometry.xy(1, 1),
                    colors: [
                      SnackishColors.orderNowBtnGradientA,
                      SnackishColors.orderNowBtnGradientB,
                    ],
                  ),
                ),
                child: BlendMask(blendMode: BlendMode.overlay, child: Container(
                decoration: BoxDecoration( 
                  boxShadow: [
                    OrderButton.innerShadowA,
                    OrderButton.innerShadowB,
                  ],
                ),))
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(borderWidth),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(
                borderRadius - (borderWidth / 2),
              ),
              child: Center(
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      minimumSize: WidgetStateProperty.all(
                        Size(double.infinity, double.infinity),
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      //fixedSize: WidgetStateProperty.all(const Size(200, 48)),
                    ),
                    child: Text(
                      buttonText,
                      style: SnackishStyles.buttonLabelLarge,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
