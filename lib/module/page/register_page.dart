import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/login_page.dart';
import 'package:frontend_japris/module/shared/theme.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cGrey,
      body: Center(
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const SizedBox(
                    height: 198,
                  ),
                  Text('Tidak Mempunyai Akun ?',
                      textAlign: TextAlign.center,
                      style: cBlackTextStyle.copyWith(
                        fontWeight: bold,
                        fontSize: 20,
                      )),
                  const SizedBox(height: 117),
                  Text(
                    'Apabila anda tidak atau\nbelum mempunyai\nakun, silahkan hubungi\n\nadmin (+62 813-2952-5947)',
                    textAlign: TextAlign.center,
                    style: cBlackTextStyle.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 116),
                  Container(
                    width: double.infinity,
                    height: 41,
                    margin: const EdgeInsets.symmetric(horizontal: 90),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ));
                      },
                      style: btnDefault,
                      child: Text(
                        'OK',
                        style: cWhiteTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}
