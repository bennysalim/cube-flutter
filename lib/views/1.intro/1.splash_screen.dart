import 'dart:async';

import 'package:cube/themes/global_theme.dart';
import 'package:cube/views/1.intro/2.onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = "/";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushNamed(OnboardingScreen.routeName),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalTheme.colorSplashScreenBackground,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              "assets/images/cube-logo.png",
              width: 150,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Center(
                child: CircularProgressIndicator(
                  strokeWidth: 1.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          )
        ],
      ),
    );
  }
}
