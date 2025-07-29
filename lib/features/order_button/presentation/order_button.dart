import 'package:flutter/material.dart';
import 'package:jp_app/themes/colors.dart';

class OrderButton extends StatelessWidget {
  final String buttonText;

  const OrderButton({super.key, this.buttonText = "Order Now"});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 48,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(16),
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
            borderRadius: BorderRadiusGeometry.circular(16),
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
            padding: EdgeInsets.all(3),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(14),
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
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      fixedSize: WidgetStateProperty.all(const Size(200, 48)),
                    ), 
                    child: Text(buttonText,
                    style: TextStyle(
                      color: SnackishColors.textLight
                    ),),
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
