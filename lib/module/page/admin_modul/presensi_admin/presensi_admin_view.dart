import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/user_modul/menu_user/components/custom_tile.dart';
import 'package:frontend_japris/module/widget/custom_contain.dart';
import 'package:frontend_japris/module/widget/custom_tile_v1.dart';

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
        CustomTileV1(title: 'Data Presensi Hari Ini', onTap: () {}),
        CustomTileV1(title: 'Data Presensi Minggu Ini', onTap: () {}),
        CustomTileV1(title: 'Data Presensi Bulan Ini', onTap: () {}),
      ],
    );
  }
}
