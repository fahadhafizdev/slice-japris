import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/admin_modul/presensi_admin/presense_admin_detail_view.dart';
import 'package:frontend_japris/module/page/user_modul/menu_user/components/custom_tile.dart';
import 'package:frontend_japris/module/widget/custom_contain.dart';
import 'package:frontend_japris/module/widget/custom_tile_v1.dart';
import 'package:get/get.dart';

import '../../../shared/theme.dart';

class TargetKerjaAdmin extends StatelessWidget {
  const TargetKerjaAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContain(
      data: 'Pelaporan Target Kerja Harian',
      children: [
        SizedBox(
          height: tinggi * 0.2,
        ),
        CustomTileV1(
          title: 'Data Laporan Harian Karyawan 1',
          fontSize: 16,
          onTap: () {
            // Get.to(const PresensiAdminDetailView(id: 1));
          },
        ),
        CustomTileV1(
          title: 'Data Laporan Harian Karyawan 2',
          fontSize: 16,
          onTap: () {
            // Get.to(const PresensiAdminDetailView(id: 2));
          },
        ),
        CustomTileV1(
          title: 'Data Laporan Harian Karyawan 3',
          fontSize: 16,
          onTap: () {
            // Get.to(const PresensiAdminDetailView(id: 3));
          },
        ),
        CustomTileV1(
          title: 'Data Laporan Harian Karyawan 4',
          fontSize: 16,
          onTap: () {
            // Get.to(const PresensiAdminDetailView(id: 3));
          },
        ),
        CustomTileV1(
          title: 'Data Laporan Harian Karyawan 5',
          fontSize: 16,
          onTap: () {
            // Get.to(const PresensiAdminDetailView(id: 3));
          },
        ),
      ],
    );
  }
}
