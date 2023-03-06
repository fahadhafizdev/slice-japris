import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/admin_modul/presensi_admin/presense_admin_detail_view.dart';
import 'package:frontend_japris/module/page/admin_modul/target_kerja_admin/target_kerja_admin_image.dart';
import 'package:frontend_japris/module/page/user_modul/menu_user/components/custom_tile.dart';
import 'package:frontend_japris/module/widget/custom_contain.dart';
import 'package:frontend_japris/module/widget/custom_tile_v1.dart';
import 'package:get/get.dart';

import '../../../shared/theme.dart';

class TargetKerjaAdminDetail extends StatelessWidget {
  final String title;
  const TargetKerjaAdminDetail({super.key, required this.title});

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
            height: 365,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 24),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
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
            child: Text(
              'Hari ini saya menyelesaikan\nproposal pengerjaan dermaga\nkepada perusahaan terkait.',
              style: cBlackTextStyle.copyWith(fontSize: 18),
            ),
          ),
          const SizedBox(height: 40),
          GestureDetector(
            onTap: () {
              Get.to(TargetKerjaAdminImage(title: title));
            },
            child: Container(
              height: 165,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 24),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icon_image.png'),
                  const SizedBox(height: 12),
                  Text(
                    'Click to open image',
                    style: cBlackTextStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
