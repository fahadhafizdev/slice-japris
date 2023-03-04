import 'dart:developer';

import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/admin_modul/slip_gaji_admin/slip_gaji_admin_view.dart';
import 'package:frontend_japris/module/shared/theme.dart';
import 'package:frontend_japris/module/widget/custom_contain.dart';
import 'package:frontend_japris/module/widget/kel_snackbar.dart';
import 'package:get/get.dart';

class SlipGajiAdmin extends StatelessWidget {
  const SlipGajiAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContain(
      data: 'Pelaporan Slip Gaji',
      children: [
        SizedBox(
          height: tinggi * 0.18,
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(37, 0, 37, 0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SlipGajiAdminView(
                      title: 'Pelaporan Slip Gaji Karyawan 1'),
                ),
              );
            },
            style: btnHome,
            child: Text(
              'Pelaporan Slip Gaji Karyawan 1',
              style: cBlackTextStyle.copyWith(
                fontWeight: FontWeight.normal,
                fontSize: 17,
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(37, 0, 37, 0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SlipGajiAdminView(
                      title: 'Pelaporan Slip Gaji Karyawan 2'),
                ),
              );
            },
            style: btnHome,
            child: Text(
              'Pelaporan Slip Gaji Karyawan 2',
              style: cBlackTextStyle.copyWith(
                fontWeight: FontWeight.normal,
                fontSize: 17,
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(37, 0, 37, 0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SlipGajiAdminView(
                      title: 'Pelaporan Slip Gaji Karyawan 3'),
                ),
              );
            },
            style: btnHome,
            child: Text(
              'Pelaporan Slip Gaji Karyawan 3',
              style: cBlackTextStyle.copyWith(
                fontWeight: FontWeight.normal,
                fontSize: 17,
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(37, 0, 37, 0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SlipGajiAdminView(
                      title: 'Pelaporan Slip Gaji Karyawan 4'),
                ),
              );
            },
            style: btnHome,
            child: Text(
              'Pelaporan Slip Gaji Karyawan 4',
              style: cBlackTextStyle.copyWith(
                fontWeight: FontWeight.normal,
                fontSize: 17,
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
