import 'package:cube/themes/dark_theme.dart';
import 'package:cube/themes/light_theme.dart';
import 'package:cube/views/3.app/1.home/home_screen.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final _ctlEmail = TextEditingController(),
      _ctlPassword = TextEditingController();
  bool _pwObscure = true;

  @override
  void dispose() {
    _ctlEmail.dispose();
    _ctlPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          "Sudah punya akun?",
          style: TextStyle(fontSize: 17, color: LightTheme.colorSecondary),
        ),
        const Text(
          "Silahkan login disini :)",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 23,
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "johndoe@gmail.com",
            labelText: "email",
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: LightTheme.colorSecondary),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: LightTheme.colorSecondary),
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: const Color.fromRGBO(246, 246, 246, 1),
            filled: true,
          ),
          onChanged: (value) {
            _ctlEmail.text = value;
          },
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            hintText: "password",
            labelText: "password",
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: LightTheme.colorSecondary),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: LightTheme.colorSecondary),
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: const Color.fromRGBO(246, 246, 246, 1),
            filled: true,
            contentPadding: const EdgeInsets.all(8),
            suffix: IconButton(
                onPressed: () {
                  setState(() {
                    _pwObscure = !_pwObscure;
                  });
                },
                icon: _pwObscure == true
                    ? const Icon(
                        Icons.visibility_off,
                        size: 20,
                      )
                    : const Icon(
                        Icons.visibility,
                        size: 20,
                      )),
          ),
          onChanged: (value) {
            _ctlPassword.text = value;
          },
          obscureText: _pwObscure,
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(HomeScreen.routeName);
                },
                style: DarkTheme.primaryButton.copyWith(
                  minimumSize: const MaterialStatePropertyAll(
                    Size.fromHeight(35),
                  ),
                ),
                child: const Text(
                  "Masuk",
                  style: TextStyle(color: LightTheme.colorPrimary),
                )),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ],
    );
  }
}
