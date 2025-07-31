import 'package:flutter/material.dart';
import 'package:jp_app/screens/home/presentation/home_view.dart';
import 'package:jp_app/screens/splash/presentation/splash_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashView()
      //home: HomeView()
    );
  }
}
