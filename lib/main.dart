import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/login_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'japris', //note : name app
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
