import 'dart:async';

import "package:flutter/material.dart";

import '../../themes/dark_theme.dart';
import '../../themes/light_theme.dart';
import '../3.app/bottomnav_widget.dart';

class ProfilingScreen extends StatefulWidget {
  static const routeName = '/profiling';
  const ProfilingScreen({super.key});

  @override
  State<ProfilingScreen> createState() => _ProfilingScreenState();
}

class _ProfilingScreenState extends State<ProfilingScreen> {
  Widget finishedBottomStack(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          "Selesai :)",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          "Akun anda berhasil dibuat\nsilahkan explor disini.",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const BottomNavWIdget(),
                ),
              );
            },
            style: DarkTheme.primaryButton.copyWith(
              minimumSize: const MaterialStatePropertyAll(
                Size.fromHeight(35),
              ),
            ),
            child: const Text(
              "Explor",
              style: TextStyle(color: LightTheme.colorPrimary),
            )),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }

  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: Image.asset(
                "assets/images/welcome.png",
                width: 270,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: finishedBottomStack(context),
            )
          ],
        ),
      ),
    );
  }
}
