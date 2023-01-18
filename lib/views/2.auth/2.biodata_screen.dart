import 'package:cube/themes/light_theme.dart';
import 'package:cube/views/2.auth/3.profiling_screen.dart';
import 'package:flutter/material.dart';

import '../../themes/dark_theme.dart';
import '../3.app/bottomnav_widget.dart';

class BiodataScreen extends StatefulWidget {
  const BiodataScreen({super.key});
  static const routeName = '/biodata';

  @override
  State<BiodataScreen> createState() => _BiodataScreenState();
}

class _BiodataScreenState extends State<BiodataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: LightTheme.colorPrimary,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            "Biodata",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: LightTheme.colorSecondary),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios,
                color: LightTheme.colorSecondary),
          ),
          titleSpacing: 0,
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Stack(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Sebelum eksplor,",
                  style:
                      TextStyle(color: LightTheme.colorSecondary, fontSize: 17),
                ),
                const Text(
                  "silahkan perkenalan diri kamu :)",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: LightTheme.colorSecondary,
                      fontSize: 17),
                ),
                const SizedBox(
                  height: 15,
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/onboarding-background.png"),
                      radius: 45,
                    ),
                    CircleAvatar(
                      backgroundColor: LightTheme.colorSecondaryLowOpacity,
                      radius: 45,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: LightTheme.colorPrimary,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "EDIT FOTO",
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "Username (ex : benisalim)",
                    labelText: "Username",
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: LightTheme.colorSecondary),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: LightTheme.colorSecondary),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: const Color.fromRGBO(246, 246, 246, 1),
                    filled: true,
                    contentPadding: const EdgeInsets.all(8),
                  ),
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                //     Row(
                //       children: [
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //      Row(
                //       children: [
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Teknologi",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Kuliner",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Film",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Life Science",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //       ],
                //     ),
                //     Row(
                //       children: [
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Arts",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Bisnis",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Fashion",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Travel",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Olahraga",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //     Row(
                //       children: [
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Keuangan",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Perhutanan",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //       ],
                //     )
                //   ],
                // ),       label: const Text(
                //               "Teknologi",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Kuliner",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Film",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Life Science",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //       ],
                //     ),
                //     Row(
                //       children: [
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Arts",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Bisnis",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Fashion",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Travel",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Olahraga",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //     Row(
                //       children: [
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //     Row(
                //       children: [
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Teknologi",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Kuliner",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Film",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Life Science",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //       ],
                //     ),
                //     Row(
                //       children: [
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Arts",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Bisnis",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Fashion",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Travel",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Olahraga",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //     Row(
                //       children: [
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Keuangan",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Perhutanan",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //       ],
                //     )
                //   ],
                // ),       label: const Text(
                //               "Keuangan",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 3,
                //         ),
                //         GestureDetector(
                //           onTap: () {},
                //           child: Chip(
                //             label: const Text(
                //               "Perhutanan",
                //               style: TextStyle(fontSize: 12),
                //             ),
                //           ),
                //         ),
                //       ],
                //     )
                //   ],
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) => const BottomNavWIdget(),
                          //   ),
                          // );
                          Navigator.of(context)
                              .pushNamed(ProfilingScreen.routeName);
                        },
                        style: DarkTheme.primaryButton.copyWith(
                          minimumSize: const MaterialStatePropertyAll(
                            Size.fromHeight(35),
                          ),
                        ),
                        child: const Text(
                          "Atur Profil",
                          style: TextStyle(color: LightTheme.colorPrimary),
                        )),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                )
              ],
            ),
          ]),
        ));
  }
}
