import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/home/beranda_page.dart';
import 'package:frontend_japris/module/page/menu/components/custom_tile.dart';
import 'package:frontend_japris/module/page/menu/meu_controller.dart';
import 'package:frontend_japris/module/page/presensi/presensi_view.dart';
import 'package:frontend_japris/module/shared/theme.dart';
import 'package:get/get.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

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
            ? const BerandaPage()
            : c.page.value == 1
                ? PresensiView()
                : c.page.value == 2
                    ? SizedBox()
                    : c.page.value == 3
                        ? SizedBox()
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
