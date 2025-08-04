import 'package:flutter/material.dart';
import 'package:jp_app/common/static_images.dart';
import 'package:jp_app/screens/home/domain/home_categories.dart';
import 'package:jp_app/screens/home/domain/home_header.dart';
import 'package:jp_app/screens/home/domain/menu_item.dart';
import 'package:jp_app/screens/home/domain/menu_item_hero.dart';
import 'package:jp_app/screens/home/presentation/home_view_background.dart';
import 'package:jp_app/themes/styles.dart';

List<MenuItemData> menuItems = [
  MenuItemData(
    StaticImages.cupkakeCat,
    "Mogli's Cup",
    "Strawberry Ice Cream",
    8.99,
  ),
  MenuItemData(
    StaticImages.icecream,
    "Balu's Cup",
    "Pistachio Ice Cream",
    8.99,
  )
];

class HomeView extends StatefulWidget {
  static const String headerText = "Choose your favorite\nSnack";

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final double horizontalPadding = 24;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomeViewBackground(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 56),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: horizontalPadding,
                    ),
                    child: HomeHeader(headerText: HomeView.headerText),
                  ),
                  SizedBox(height: 24),
                  HomeCategories(),
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: horizontalPadding,
                    ),
                    child: MenuItemHero(),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: horizontalPadding,
                    ),
                    child: Text(
                      "We Recommend",
                      style: SnackishStyles.headerText.copyWith(fontSize: 16),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        ...menuItems.map((item) => MenuItem(
                          height: 300,
                          imageAssetUrl: item.imageAssetUrl, 
                          itemName: item.itemName, 
                          itemDescription: item.itemDescription, 
                          itemPrice: item.itemPrice))
                      ],),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
