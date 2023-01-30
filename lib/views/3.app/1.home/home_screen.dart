import 'package:cube/themes/light_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool btnSave = false;

  @override
  void initState() {
    setState(() {
      btnSave = false;
    });
    super.initState();
  }

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
                border: Border(
                  top: BorderSide(
                      width: 0.4, color: LightTheme.colorSecondaryLowOpacity),
                  bottom: BorderSide(
                      width: 0.4, color: LightTheme.colorSecondaryLowOpacity),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/onboarding-background.png",
                      ),
                      radius: 15,
                    ),
                    title: const Text(
                      "bennysptwn",
                      style: TextStyle(fontSize: 13),
                    ),
                    minLeadingWidth: 0,
                    contentPadding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        "assets/images/onboarding-background.png",
                        height: 300,
                        fit: BoxFit.fitWidth,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              "gua lagi makan makan lur, elu pasti cuma maen ML doang dirumah",
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/tag.png",
                                      width: 14,
                                      height: 14,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    const Text(
                                      "entrepreneur",
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                          color: LightTheme
                                              .colorSecondaryLowOpacity),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      "assets/images/clock.png",
                                      width: 14,
                                      height: 14,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    const Text(
                                      "10 Maret 2022",
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                          color: LightTheme
                                              .colorSecondaryLowOpacity),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      btnSave = !btnSave;
                                    });
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color: btnSave == true
                                            ? LightTheme.colorSecondary
                                            : LightTheme.colorPrimary,
                                        border: Border.all(
                                            color: LightTheme.colorSecondary),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                            color: btnSave == true
                                                ? LightTheme.colorPrimary
                                                : LightTheme.colorSecondary,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ));
  }
}
