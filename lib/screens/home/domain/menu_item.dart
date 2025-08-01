import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:jp_app/common/blendmask.dart';
import 'package:jp_app/common/glass_elements/glass_backdrop.dart';
import 'package:jp_app/common/static_images.dart';
import 'package:jp_app/themes/styles.dart';
import 'package:widget_mask/widget_mask.dart';

final Image maskImage = Image.asset(
  StaticImages.detailCutCard,
  fit: BoxFit.contain,
);

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(16),
      child: Center(
        child: Stack(
          children: [
            GlassBackdrop(
              child: BlendMask(blendMode: BlendMode.dstATop, child: maskImage),
            ),
            BlendMask(
              opacity: 0.5,
              blendMode: BlendMode.srcATop,
              child: maskImage,
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(16),
              child: Text(
                "Angi's Yummy Burger",
                style: SnackishStyles.buttonLabelLarge,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
