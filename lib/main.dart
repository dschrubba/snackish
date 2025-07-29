import 'package:flutter/material.dart';
import 'package:jp_app/features/order_button/presentation/order_button.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: OrderButton()
        ),
      ),
    );
  }
}
