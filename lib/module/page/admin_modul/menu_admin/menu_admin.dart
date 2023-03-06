import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/admin_modul/home_admin/beranda_admin.dart';
import 'package:frontend_japris/module/page/admin_modul/presensi_admin/presensi_admin_view.dart';
import 'package:frontend_japris/module/page/admin_modul/slip_gaji_admin/slip_gaji_admin_list.dart';
import 'package:frontend_japris/module/page/admin_modul/target_kerja_admin/target_kerja_admin_view.dart';
import 'package:frontend_japris/module/page/user_modul/home_user/beranda_user.dart';
import 'package:frontend_japris/module/page/user_modul/menu_user/components/custom_tile.dart';
import 'package:frontend_japris/module/page/user_modul/menu_user/meu_controller.dart';
import 'package:frontend_japris/module/page/user_modul/presensi/presensi_view.dart';
import 'package:frontend_japris/module/page/admin_modul/slip_gaji_admin/slip_gaji_admin_view.dart';
import 'package:frontend_japris/module/page/user_modul/target_kerja/target_kerja_view.dart';
import 'package:frontend_japris/module/shared/theme.dart';
import 'package:get/get.dart';

import '../slip_gaji_admin/slip_gaji_admin.dart';

class MenuAdmin extends StatelessWidget {
  const MenuAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    MenuController c = Get.put(MenuController());
    Widget bottomNavbar() {
      return Obx(
        () => Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 87,
            width: double.infinity,
            decoration: BoxDecoration(color: cWhite),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTile(
                  title: 'Beranda',
                  icon: 'assets/icon1.svg',
                  isActive: c.page.value == 0 ? true : false,
                  page: 0,
                ),
                CustomTile(
                  title: 'Presensi',
                  icon: 'assets/icon2.svg',
                  isActive: c.page.value == 1 ? true : false,
                  page: 1,
                ),
                CustomTile(
                  title: 'Target Kerja',
                  icon: 'assets/icon3.svg',
                  isActive: c.page.value == 2 ? true : false,
                  page: 2,
                ),
                CustomTile(
                  title: 'Slip Gaji',
                  icon: 'assets/icon4.svg',
                  isActive: c.page.value == 3 ? true : false,
                  page: 3,
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Obx(
        () => c.page.value == 0
            ? const BerandaAdmin()
            : c.page.value == 1
                ? PresensiAdmin()
                : c.page.value == 2
                    ? TargetKerjaAdmin()
                    : c.page.value == 3
                        ? SlipGajiAdminlist()
                        : SizedBox(),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          content(),
          bottomNavbar(),
        ],
      ),
    );
  }
}
