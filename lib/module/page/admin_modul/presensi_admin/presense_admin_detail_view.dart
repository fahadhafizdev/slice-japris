import 'dart:developer';

import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:frontend_japris/module/shared/theme.dart';
import 'package:frontend_japris/module/widget/custom_contain.dart';
import 'package:frontend_japris/module/widget/kel_snackbar.dart';

class PresensiAdminDetailView extends StatelessWidget {
  final int id;
  const PresensiAdminDetailView({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContain(
        data: id == 1
            ? 'Data Presensi Hari Ini'
            : id == 2
                ? 'Data Presensi Minggu Ini'
                : id == 3
                    ? 'Data Presensi Bulan Ini'
                    : 'none',
        children: [
          SizedBox(
            height: tinggi * 0.2,
          ),
          Image.asset(
            id == 1
                ? 'assets/table.png'
                : id == 2
                    ? 'assets/table2.png'
                    : 'assets/table3.png',
          ),
        ],
      ),
    );
  }
}
