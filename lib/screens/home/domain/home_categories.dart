import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:jp_app/common/glass_elements/glass_button.dart';
import 'package:jp_app/themes/styles.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 16,
        children: [
          SizedBox(
            width: 8,
          ),
          GlassButton(
            iconLeading: Icons.fastfood_outlined,
            label: "All categories",
            child: Transform.rotate(angle: -90.0 / (180 / math.pi), child:  Icon(
              Icons.chevron_left,
            color: SnackishStyles.buttonLabelMedium.color,),
            )
          ),
          GlassButton(
            label: "Salty",
          ),
          GlassButton(
            label: "Sweet",
          ),
          GlassButton(
            label: "Deserts",
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}