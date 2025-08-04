import 'package:flutter/material.dart';
import 'package:jp_app/common/glass_elements/glass_card.dart';
import 'package:jp_app/features/order_button/presentation/order_button.dart';
import 'package:jp_app/screens/home/presentation/home_view.dart';
import 'package:jp_app/screens/splash/presentation/splash_view_background.dart';
import 'package:jp_app/themes/styles.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SplashViewBackground(),
          SafeArea(
            child: Padding(
              padding: EdgeInsetsGeometry.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GlassCard(
                    child: Column(
                      spacing: 14,
                      children: [
                        Text(
                          "Feeling Snackish Today?",
                          style: SnackishStyles.headingMedium,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Explore Angi's most popular snack selection and get instantly happy.",
                          style: SnackishStyles.textLight,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 4),
                        OrderButton(),
                      ],
                    ),
                  ),
                  SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
