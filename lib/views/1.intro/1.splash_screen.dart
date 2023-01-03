import 'package:cube/themes/global_theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "/";
  const SplashScreen({super.key});

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
