import 'package:flutter/material.dart';
import 'package:jp_app/common/static_images.dart';

class HomeViewBackground extends StatelessWidget {
  const HomeViewBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(StaticImages.backgroundMainScreen).image,
            ),
          ),
        ),
      ],
    );
  }
}
