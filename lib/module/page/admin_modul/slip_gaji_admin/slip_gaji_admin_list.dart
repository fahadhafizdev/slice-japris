import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/admin_modul/presensi_admin/presense_admin_detail_view.dart';
import 'package:frontend_japris/module/page/admin_modul/slip_gaji_admin/slip_gaji_admin.dart';
import 'package:frontend_japris/module/page/admin_modul/target_kerja_admin/target_kerja_admin_detail.dart';
import 'package:frontend_japris/module/page/user_modul/menu_user/components/custom_tile.dart';
import 'package:frontend_japris/module/widget/custom_contain.dart';
import 'package:frontend_japris/module/widget/custom_tile_v1.dart';
import 'package:get/get.dart';

import '../../../shared/theme.dart';
import 'slip_gaji_admin_view.dart';

class SlipGajiAdminlist extends StatelessWidget {
  const SlipGajiAdminlist({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContain(
      data: 'Pelaporan Slip Gaji',
      children: [
        SizedBox(
          height: tinggi * 0.2,
        ),
        CustomTileV1(
          title: 'Pelaporan Slip Gaji Karyawan 1',
          fontSize: 16,
          onTap: () {
            Get.to(
              const SlipGajiAdminView(title: 'Pelaporan Slip Gaji Karyawan 1'),
            );
          },
        ),
        CustomTileV1(
          title: 'Pelaporan Slip Gaji Karyawan 2',
          fontSize: 16,
          onTap: () {
            Get.to(
              const SlipGajiAdminView(title: 'Pelaporan Slip Gaji Karyawan 2'),
            );
          },
        ),
        CustomTileV1(
          title: 'Pelaporan Slip Gaji Karyawan 3',
          fontSize: 16,
          onTap: () {
            Get.to(
              const SlipGajiAdminView(title: 'Pelaporan Slip Gaji Karyawan 3'),
            );
          },
        ),
        CustomTileV1(
          title: 'Pelaporan Slip Gaji Karyawan 4',
          fontSize: 16,
          onTap: () {
            Get.to(
              const SlipGajiAdminView(title: 'Pelaporan Slip Gaji Karyawan 4'),
            );
          },
        ),
        CustomTileV1(
          title: 'Pelaporan Slip Gaji Karyawan 5',
          fontSize: 16,
          onTap: () {
            Get.to(
              const SlipGajiAdminView(title: 'Pelaporan Slip Gaji Karyawan 5'),
            );
          },
        ),
      ],
    );
  }
}
