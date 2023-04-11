import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/admin_modul/data_karyawan_admin/data_karyawan.dart';
import 'package:frontend_japris/module/page/admin_modul/data_karyawan_admin/data_karyawan_controller.dart';
import 'package:frontend_japris/module/page/admin_modul/data_karyawan_admin/data_karyawan_edit.dart';
import 'package:frontend_japris/module/page/user_modul/menu_user/components/custom_tile.dart';
import 'package:frontend_japris/module/widget/custom_contain.dart';
import 'package:frontend_japris/module/widget/custom_tile_v1.dart';
import 'package:get/get.dart';

import '../../../shared/theme.dart';

class ListMenuKaryawan extends StatelessWidget {
  const ListMenuKaryawan({super.key});

  @override
  Widget build(BuildContext context) {
    DataKaryawanController c = Get.put(DataKaryawanController());
    return CustomContain(
      data: 'Data Karyawan',
      children: [
        SizedBox(height: 180),
        CustomTileV1(
          title: 'Karyawan 1',
          onTap: () {
            Get.to(DataKaryawan());
          },
        ),
        CustomTileV1(
          title: 'Karyawan 2',
          onTap: () {
            Get.to(DataKaryawan());
          },
        ),
        CustomTileV1(
          title: 'Karyawan 3',
          onTap: () {
            Get.to(DataKaryawan());
          },
        ),
        CustomTileV1(
          title: 'Karyawan 4',
          onTap: () {
            Get.to(DataKaryawan());
          },
        ),
        Obx(
          () => !c.isEdit.value
              ? SizedBox(
                  width: 135,
                  child: ElevatedButton(
                      style: btnGreen,
                      onPressed: () {
                        c.isEdit.value = true;
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit,
                            size: 20,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Edit',
                            style: cWhiteTextStyle,
                          ),
                        ],
                      )),
                )
              : Column(
                  children: [
                    SizedBox(
                      width: 135,
                      child: ElevatedButton(
                          style: btnBlue,
                          onPressed: () {
                            c.isEdit.value = false;
                            Get.to(DataKaryawanEdit());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person_add_alt_1_outlined,
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Tambah',
                                style: cWhiteTextStyle,
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      width: 135,
                      child: ElevatedButton(
                          style: btnRed,
                          onPressed: () {
                            c.isEdit.value = false;
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person_remove_alt_1_outlined,
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Hapus',
                                style: cWhiteTextStyle,
                              ),
                            ],
                          )),
                    )
                  ],
                ),
        ),
      ],
    );
  }
}
