import 'package:flutter/material.dart';
import 'package:frontend_japris/module/widget/custom_contain.dart';
import 'package:get/get.dart';

import '../../../shared/theme.dart';

class DataKaryawanEdit extends StatelessWidget {
  final String name;
  final String id;
  final String noHp;
  final String jabatan;
  final String alamat;
  const DataKaryawanEdit({
    super.key,
    this.name = '',
    this.alamat = '',
    this.id = '',
    this.jabatan = '',
    this.noHp = '',
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController nameCtx = TextEditingController(text: '$name');
    TextEditingController idCtx = TextEditingController(text: '$id');
    TextEditingController alamatCtx = TextEditingController(text: '$alamat');
    TextEditingController noHpCtx = TextEditingController(text: '$noHp');
    TextEditingController jabatanCtx = TextEditingController(text: '$jabatan');

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
                  'Karyawan 5',
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
                      child: SizedBox(
                        width: 120,
                        height: 30,
                        child: TextFormField(
                          controller: nameCtx,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 12, left: 12),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            fillColor: Color(0xffF6F6F6),
                            filled: true,
                            hintText: '',
                          ),
                        ),
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
                      child: SizedBox(
                        width: 120,
                        height: 30,
                        child: TextFormField(
                          controller: idCtx,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 12, left: 12),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            fillColor: Color(0xffF6F6F6),
                            filled: true,
                            hintText: '',
                          ),
                        ),
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
                      child: SizedBox(
                        width: 120,
                        height: 30,
                        child: TextFormField(
                          controller: noHpCtx,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 12, left: 12),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            fillColor: Color(0xffF6F6F6),
                            filled: true,
                            hintText: '',
                          ),
                        ),
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
                      child: SizedBox(
                        width: 120,
                        height: 30,
                        child: TextFormField(
                          controller: jabatanCtx,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 12, left: 12),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            fillColor: Color(0xffF6F6F6),
                            filled: true,
                            hintText: '',
                          ),
                        ),
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
                      child: SizedBox(
                        width: 120,
                        height: 30,
                        child: TextFormField(
                          controller: alamatCtx,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 12, left: 12),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            fillColor: Color(0xffF6F6F6),
                            filled: true,
                            hintText: '',
                          ),
                        ),
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
                style: btnBlue,
                onPressed: () {
                  Get.back();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Submit',
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
