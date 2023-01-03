import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  static const routeName = "/onboarding";
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration:
                const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.2)),
            width: double.infinity,
            height: double.infinity,
          )
        ],
      ),
    );
  }
}
