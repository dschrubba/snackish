import 'package:flutter/material.dart';
import 'package:jp_app/screens/home/domain/menu_item_hero.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.all(16),
      child: Center(
        child: MenuItemHero(),
      ),
    );
  }
}
