import 'package:cube/themes/dark_theme.dart';
import 'package:cube/themes/light_theme.dart';
import 'package:cube/views/2.auth/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  static const routeName = "/onboarding";
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage("assets/images/onboarding-background.png"),
                    fit: BoxFit.cover),
              ),
              width: double.infinity,
              height: double.infinity),
          Container(
            decoration:
                const BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5)),
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Flexible(
                        flex: 2,
                        child: Text(
                          "Selamat datang di platform sosial",
                          style: TextStyle(color: Colors.white, fontSize: 27),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Text(
                          "yang sesungguhnya",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Flexible(
                        flex: 2,
                        child: Text(
                          "humanis, realistis, sosialis.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(AuthScreen.routeName);
                          },
                          style: LightTheme.primaryButton.copyWith(
                            minimumSize: const MaterialStatePropertyAll(
                              Size.fromHeight(35),
                            ),
                          ),
                          child: const Text(
                            "Mulai",
                            style: TextStyle(color: LightTheme.colorSecondary),
                          )),
                      const SizedBox(
                        height: 20,
                      )
                    ],
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
