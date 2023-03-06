import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/admin_modul/presensi_admin/presense_admin_detail_view.dart';
import 'package:frontend_japris/module/page/user_modul/menu_user/components/custom_tile.dart';
import 'package:frontend_japris/module/widget/custom_contain.dart';
import 'package:frontend_japris/module/widget/custom_tile_v1.dart';
import 'package:get/get.dart';

import '../../../shared/theme.dart';

class PresensiAdmin extends StatelessWidget {
  const PresensiAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContain(
      data: 'Presensi',
      children: [
        SizedBox(
          height: tinggi * 0.3,
        ),
        CustomTileV1(
          title: 'Data Presensi Hari Ini',
          onTap: () {
            Get.to(const PresensiAdminDetailView(id: 1));
          },
        ),
        CustomTileV1(
          title: 'Data Presensi Minggu Ini',
          onTap: () {
            Get.to(const PresensiAdminDetailView(id: 2));
          },
        ),
        CustomTileV1(
          title: 'Data Presensi Bulan Ini',
          onTap: () {
            Get.to(const PresensiAdminDetailView(id: 3));
          },
        ),
      ],
    );
  }
}
