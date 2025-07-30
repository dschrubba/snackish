import 'package:flutter/material.dart';
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
      ],
    );
  }
}
