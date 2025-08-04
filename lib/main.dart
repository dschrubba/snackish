import 'package:flutter/material.dart';
import 'package:jp_app/common/fonts/sf_fonts.dart';
import 'package:jp_app/screens/home/presentation/home_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: SFProDisplay.family
      ),
      //home: SplashView()
      home: HomeView()
    );
  }
}
