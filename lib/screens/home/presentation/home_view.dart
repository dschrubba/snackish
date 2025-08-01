import 'package:flutter/material.dart';
import 'package:jp_app/screens/home/domain/home_categories.dart';
import 'package:jp_app/screens/home/domain/home_header.dart';
import 'package:jp_app/screens/home/domain/menu_item.dart';
import 'package:jp_app/screens/home/presentation/home_view_background.dart';
import 'package:jp_app/themes/styles.dart';

class HomeView extends StatefulWidget {
  static const String headerText = "Choose your favorite\nSnack";

  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomeViewBackground(),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32),
                Padding(
                  padding: EdgeInsetsGeometry.all(24),
                  child: HomeHeader(headerText: HomeView.headerText),
                ),
                SizedBox(height: 16),
                HomeCategories(),
                MenuItem(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 24
                  ),
                  child: Text(
                    "We Recommend",
                    style: SnackishStyles.headerText.copyWith(
                      fontSize: 16
                    ),
                  ),
                )
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
