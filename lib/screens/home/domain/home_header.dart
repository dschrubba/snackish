import 'package:flutter/material.dart';
import 'package:jp_app/themes/styles.dart';

class HomeHeader extends StatelessWidget {
  final String headerText;
  const HomeHeader({super.key, required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text(
          headerText,
          style: SnackishStyles.headerText,
          )
      ],
    );
  }
}