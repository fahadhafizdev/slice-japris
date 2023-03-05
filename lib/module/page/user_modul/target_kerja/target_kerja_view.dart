import 'dart:developer';

import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/user_modul/target_kerja/components/upload_file.dart';
import 'package:frontend_japris/module/page/user_modul/target_kerja/controller/target_kerja_controller.dart';
import 'package:frontend_japris/module/shared/theme.dart';
import 'package:frontend_japris/module/widget/custom_contain.dart';
import 'package:frontend_japris/module/widget/kel_snackbar.dart';
import 'package:get/get.dart';

class TargetKerjaView extends StatelessWidget {
  const TargetKerjaView({super.key});

  @override
  Widget build(BuildContext context) {
    TargetKerjaUserController c = Get.put(TargetKerjaUserController());
    return CustomContain(
      data: 'Lapor Target Kerja Harian',
      children: [
        SizedBox(
          height: tinggi * 0.18,
        ),
        GestureDetector(
          onTap: () {
            c.isShow.value = !c.isShow.value;
          },
          child: Container(
            height: 365,
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
            child: Obx(
              () => Text(
                c.isShow.value
                    ? 'Laporan hari ini : \n1.Rekap data harian\n2.Proposal laporan'
                    : 'silahkan masukan laporan anda dibawah ini',
                style: cBlackTextStyle.copyWith(fontSize: 12),
              ),
            ),
          ),
        ),
        SizedBox(height: 31),
        Text(
          'Lampirkan hasil pekerjaan anda dengan\n menekan tombol dibawah ini.',
          textAlign: TextAlign.center,
          style: cBlackTextStyle.copyWith(fontSize: 13),
        ),
        SizedBox(height: 11),
        SizedBox(
          width: 135,
          child: ElevatedButton(
              style: btnGreen,
              onPressed: () {
                Get.to(UploadFile());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.attach_file),
                  Text(
                    'Lampirkan',
                    style: cWhiteTextStyle,
                  ),
                ],
              )),
        ),
        SizedBox(height: 17),
        SizedBox(
          width: 135,
          child: ElevatedButton(
            style: btnDefault,
            onPressed: () {},
            child: Text(
              'Submit',
              style: cWhiteTextStyle.copyWith(fontWeight: bold),
            ),
          ),
        ),
      ],
    );
  }
}
