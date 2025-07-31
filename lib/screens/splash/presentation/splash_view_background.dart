import 'package:flutter/material.dart';
import 'package:jp_app/common/blendmask.dart';
import 'package:jp_app/common/static_images.dart';

class SplashViewBackground extends StatelessWidget {
  const SplashViewBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(StaticImages.backgroundStartScreen).image,
            ),
          ),
        ),
        // Cupcake Chick
        Transform(
          transform: Transform.translate(
            offset: Offset(50, 175)).transform,
          child: Transform.scale(
            scale: 1.33,
            child: Image.asset(
              StaticImages.imageCupcakeChick,
              fit: BoxFit.contain,
            ),
          ),
        ),
        // Snack Snack
        Transform(
          transform: Transform.translate(
            offset: Offset(0, 440)).transform,
          child: Transform.scale(
            scale: 1,
            child: BlendMask(
              blendMode: BlendMode.overlay,
              child: Image.asset(
                StaticImages.detailSnackSnack,
                width: double.infinity,
                repeat: ImageRepeat.repeatX,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
