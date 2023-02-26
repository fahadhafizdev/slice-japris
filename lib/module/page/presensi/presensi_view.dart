import 'dart:developer';

import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:frontend_japris/module/shared/theme.dart';
import 'package:frontend_japris/module/widget/custom_contain.dart';
import 'package:frontend_japris/module/widget/kel_snackbar.dart';

class PresensiView extends StatelessWidget {
  const PresensiView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContain(
      data: 'Presensi',
      children: [
        SizedBox(
          height: tinggi * 0.3,
        ),
        Text(
          'Silahkan scan QR-code presensi\ndibawah ini',
          textAlign: TextAlign.center,
          style: cBlackTextStyle.copyWith(fontSize: 16),
        ),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: ElevatedButton(
            style: btnDefault,
            onPressed: () async {
              var result = await BarcodeScanner.scan();
              if (result.rawContent.isEmpty || result.rawContent == null) {
                KelSnackBar().show(
                  title: 'Failed',
                  message: 'Anda tidak berhasil melakukan presensi',
                );
                return;
              }

              print('format : ${result.format}');
              print('formatNote : ${result.formatNote}');
              print('rawContent : ${result.rawContent}');
              print('Type : ${result.type}');

              KelSnackBar().show(
                title: 'Success',
                message: 'Anda telah berhasil melakukan presensi',
                color: Colors.green,
              );
            },
            child: Text(
              'Scan',
              style: cWhiteTextStyle.copyWith(fontWeight: medium),
            ),
          ),
        ),
      ],
    );
  }
}
