import 'package:flutter/material.dart';
import 'package:jp_app/common/glass_button.dart';
import 'package:jp_app/screens/home/domain/home_header.dart';
import 'package:jp_app/screens/home/presentation/home_view_background.dart';

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
            child: Padding(
              padding: EdgeInsetsGeometry.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  HomeHeader(
                    headerText:  HomeView.headerText,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GlassButton(
                          icon: Icons.fastfood_outlined,
                          label: "hehehe lol"
                          )
                      ],
                    ),
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