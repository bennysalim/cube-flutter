import 'package:cube/themes/light_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: LightTheme.colorPrimary,
        appBar: AppBar(
          backgroundColor: LightTheme.colorPrimary,
          titleSpacing: 0,
          title: const Text(
            "Cube",
            style: TextStyle(color: LightTheme.colorSecondary),
          ),
          elevation: 0,
          leading: Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/cube-logo-light.png",
                  width: 35,
                ),
              ],
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/onboarding-background.png",
                          ),
                          radius: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
