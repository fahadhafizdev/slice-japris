import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/admin_modul/presensi_admin/presense_admin_detail_view.dart';
import 'package:frontend_japris/module/page/user_modul/menu_user/components/custom_tile.dart';
import 'package:frontend_japris/module/widget/custom_contain.dart';
import 'package:frontend_japris/module/widget/custom_tile_v1.dart';
import 'package:get/get.dart';

import '../../../shared/theme.dart';

class TargetKerjaAdminImage extends StatelessWidget {
  final String title;
  const TargetKerjaAdminImage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomContain(
        data: title,
        children: [
          SizedBox(
            height: tinggi * 0.2,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 24),
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 12),
            decoration: BoxDecoration(
              color: cWhite,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: cBlue2.withOpacity(0.09),
                  blurRadius: 32,
                  spreadRadius: 8,
                  offset: const Offset(0, -8), // Shadow position
                ),
              ],
            ),
            child: Image.asset('assets/surat.png'),
          ),
        ],
      ),
    );
  }
}
