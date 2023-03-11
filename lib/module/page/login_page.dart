import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/admin_modul/menu_admin/menu_admin.dart';
import 'package:frontend_japris/module/page/user_modul/home_user/beranda_user.dart';
import 'package:frontend_japris/module/page/user_modul/menu_user/menu_user.dart';
import 'package:frontend_japris/module/page/register_page.dart';
import 'package:frontend_japris/module/shared/theme.dart';
import 'package:frontend_japris/module/widget/kel_snackbar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    tinggi = MediaQuery.of(context).size.height;
    lebar = MediaQuery.of(context).size.width;
    TextEditingController username = TextEditingController(text: "");
    TextEditingController password = TextEditingController(text: "");
    return Scaffold(
      backgroundColor: cGrey,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 100),
                      Text(
                        'SELAMAT DATANG\nDI SISTIM INFORMASI KEPAGAWAIAN\nPT.JALADRI PRIMA SOLUSI',
                        textAlign: TextAlign.center,
                        style: cBlackTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Image.asset(
                        'assets/logo.png',
                        height: 131,
                        width: 131,
                      ),
                      const SizedBox(height: 60),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextFormField(
                          controller: username,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Username',
                          ),
                        ),
                      ),
                      const SizedBox(height: 38),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: TextFormField(
                          controller: password,
                          obscureText: true,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Password',
                          ),
                        ),
                      ), //this note
                      const SizedBox(height: 38),
                      Container(
                        width: double.infinity,
                        height: 41,
                        margin: const EdgeInsets.symmetric(horizontal: 90),
                        child: ElevatedButton(
                          onPressed: () {
                            if (username.text == "royfasya" &&
                                password.text == "12345") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MenuUser(),
                                ),
                              );
                            } else if (username.text == "admin" &&
                                password.text == "admin") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MenuAdmin(),
                                ),
                              );
                            } else {
                              KelSnackBar().show(
                                title: 'Error',
                                message: 'Lengkapi data dulu',
                              );
                            }
                          },
                          style: btnDefault,
                          child: Text(
                            'Login',
                            style: cWhiteTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 78),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Tidak mempunyai akun ? ',
                            textAlign: TextAlign.center,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterPage(),
                                ),
                              );
                            },
                            child: Text.rich(
                              TextSpan(
                                text: 'Klik disini',
                                style: cBlue2TextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Align(
                      //     alignment: Alignment.center,
                      //     child: Text.rich(TextSpan(
                      //       text: 'Tidak mempunyai akun ? ',
                      //     )),
                      //     ),
                      // GestureDetector(
                      //   onTap: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => RegisterPage(),
                      //       ),
                      //     );
                      //   },
                      //   child: Text.rich(
                      //     TextSpan(
                      //       text: 'Klik disini',
                      //       style: cBlue2TextStyle,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset(
                    'assets/label.png',
                    height: 20,
                    width: 100,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
