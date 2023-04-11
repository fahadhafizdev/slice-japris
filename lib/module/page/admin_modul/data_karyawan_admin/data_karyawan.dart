import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/admin_modul/data_karyawan_admin/data_karyawan_controller.dart';
import 'package:frontend_japris/module/page/admin_modul/data_karyawan_admin/data_karyawan_edit.dart';
import 'package:frontend_japris/module/page/user_modul/menu_user/components/custom_tile.dart';
import 'package:frontend_japris/module/widget/custom_contain.dart';
import 'package:get/get.dart';

import '../../../shared/theme.dart';

class DataKaryawan extends StatelessWidget {
  const DataKaryawan({super.key});

  @override
  Widget build(BuildContext context) {
    DataKaryawanController c = Get.find();
    return Scaffold(
      body: CustomContain(
        data: 'Data Karyawan',
        children: [
          const SizedBox(height: 150),
          Container(
            height: 365,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 24),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 28),
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
              children: [
                Text(
                  'Karyawan 1',
                  style: cBlackTextStyle.copyWith(fontSize: 16),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Nama',
                        style: cBlackTextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        ': Roy Fasya',
                        style: cBlackTextStyle,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'ID',
                        style: cBlackTextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        ': 1232132143',
                        style: cBlackTextStyle,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Nomer Hp',
                        style: cBlackTextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        ': 081330648183',
                        style: cBlackTextStyle,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Jabatan',
                        style: cBlackTextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        ': Software Enginer',
                        style: cBlackTextStyle,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Alamat',
                        style: cBlackTextStyle,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        ': Lamongan',
                        style: cBlackTextStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          SizedBox(
            width: 135,
            child: ElevatedButton(
                style: btnGreen,
                onPressed: () {
                  Get.to(DataKaryawanEdit(
                    name: 'Roy',
                    alamat: 'Lamongan',
                    id: '234324234',
                    jabatan: 'Sofware Enginer',
                    noHp: '081330648183',
                  ));
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
          ),
        ],
      ),
    );
  }
}
