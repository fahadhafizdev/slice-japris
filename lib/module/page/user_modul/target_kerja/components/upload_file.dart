import 'dart:developer';

import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/user_modul/target_kerja/controller/target_kerja_controller.dart';
import 'package:frontend_japris/module/shared/theme.dart';
import 'package:frontend_japris/module/widget/custom_contain.dart';
import 'package:frontend_japris/module/widget/kel_snackbar.dart';
import 'package:get/get.dart';

class UploadFile extends StatelessWidget {
  const UploadFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContain(
        data: 'Lapor Target Kerja Harian',
        children: [
          SizedBox(
            height: tinggi * 0.18,
          ),
          Container(
            height: tinggi * 0.7,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 24),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            decoration: BoxDecoration(
              color: cWhite,
              boxShadow: [
                BoxShadow(
                  color: cBlue2.withOpacity(0.09),
                  blurRadius: 32,
                  spreadRadius: 8,
                  offset: const Offset(0, -8), // Shadow position
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Center(
                child: Container(
                  height: 35,
                  width: 139,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    boxShadow: [
                      BoxShadow(
                        color: cBlack.withOpacity(0.09),
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: const Offset(0, 5), // Shadow position
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.attachment),
                      const SizedBox(width: 8),
                      Text('Pilih file disini'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
