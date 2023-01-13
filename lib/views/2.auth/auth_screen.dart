import 'package:cube/themes/light_theme.dart';
import 'package:cube/views/2.auth/auth_widget/login_widget.dart';
import 'package:cube/views/2.auth/auth_widget/register_widget.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  static const routeName = '/auth';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool? btnRegister;
  bool? btnLogin;
  @override
  void initState() {
    setState(() {
      btnRegister = true;
      btnLogin = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightTheme.colorPrimary,
      appBar: AppBar(
        backgroundColor: LightTheme.colorPrimary,
        foregroundColor: LightTheme.colorSecondary,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        btnRegister = true;
                        btnLogin = false;
                      });
                      print(btnRegister);
                    },
                    child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: btnRegister == true
                              ? LightTheme.colorSecondary
                              : LightTheme.colorPrimary,
                          border: Border.all(color: LightTheme.colorSecondary),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Register",
                          style: TextStyle(
                              color: btnRegister == true
                                  ? LightTheme.colorPrimary
                                  : LightTheme.colorSecondary,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        )),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        btnRegister = false;
                        btnLogin = true;
                      });
                    },
                    child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: btnLogin == true
                              ? LightTheme.colorSecondary
                              : LightTheme.colorPrimary,
                          border: Border.all(color: LightTheme.colorSecondary),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: btnLogin == true
                                ? LightTheme.colorPrimary
                                : LightTheme.colorSecondary,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        )),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/cube-logo-light.png",
              width: 40,
              height: 60,
              alignment: Alignment.centerLeft,
            ),
            const SizedBox(
              height: 15,
            ),
            btnRegister == true ? const RegisterWidget() : const LoginWidget()
          ],
        ),
      ),
    );
  }
}
