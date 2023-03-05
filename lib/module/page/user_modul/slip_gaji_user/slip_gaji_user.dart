import 'dart:developer';

import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/admin_modul/slip_gaji_admin/controller/slip_gaji_controller.dart';
import 'package:frontend_japris/module/shared/theme.dart';
import 'package:frontend_japris/module/widget/custom_contain.dart';
import 'package:frontend_japris/module/widget/kel_snackbar.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class SlipGajiUser extends StatelessWidget {
  const SlipGajiUser({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController ctxGajiPokok =
        TextEditingController(text: 'Rp.4000.000');
    TextEditingController ctxTm = TextEditingController(text: 'Rp.400.000');
    TextEditingController ctxTt = TextEditingController(text: 'Rp.800.000');
    TextEditingController ctxPt1 = TextEditingController(text: 'Rp.200.000');
    TextEditingController ctxPt2 = TextEditingController(text: 'Rp.100.000');
    TextEditingController ctxPt3 = TextEditingController(text: 'Rp.500.000');
    TextEditingController ctxLl = TextEditingController(text: 'Rp.50.000');
    TextEditingController ctxAl1 = TextEditingController(text: '');
    TextEditingController ctxAl2 = TextEditingController(text: '');
    TextEditingController ctxTotal =
        TextEditingController(text: 'Rp.5.450.000');

    return CustomContain(
      data: 'Lapor Target Kerja Harian',
      children: [
        SizedBox(
          height: tinggi * 0.18,
        ),
        Text(
          'Gaji anda terima dalam bulan ini\nadalah :',
          style: cBlackTextStyle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 17),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 24),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
          decoration: BoxDecoration(
            color: cWhite,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Gaji Pokok',
                    style: cBlackTextStyle,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextFormField(
                      enabled: false,
                      controller: ctxGajiPokok,
                      decoration: InputDecoration(
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
                        fillColor: Colors.white,
                        filled: true,
                        hintText: '',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tunjangan Makan',
                    style: cBlackTextStyle,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextFormField(
                      enabled: false,
                      controller: ctxTm,
                      decoration: InputDecoration(
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
                        fillColor: Colors.white,
                        filled: true,
                        hintText: '',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tunjangan Transportasi',
                    style: cBlackTextStyle,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextFormField(
                      enabled: false,
                      controller: ctxTt,
                      decoration: InputDecoration(
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
                        fillColor: Colors.white,
                        filled: true,
                        hintText: '',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Potongan 1',
                    style: cBlackTextStyle,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextFormField(
                      enabled: false,
                      controller: ctxPt1,
                      decoration: InputDecoration(
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
                        fillColor: Colors.white,
                        filled: true,
                        hintText: '',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Potongan 2',
                    style: cBlackTextStyle,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextFormField(
                      enabled: false,
                      controller: ctxPt2,
                      decoration: InputDecoration(
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
                        fillColor: Colors.white,
                        filled: true,
                        hintText: '',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Potongan 3',
                    style: cBlackTextStyle,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextFormField(
                      enabled: false,
                      controller: ctxPt3,
                      decoration: InputDecoration(
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
                        fillColor: Colors.white,
                        filled: true,
                        hintText: '',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lain-lain',
                    style: cBlackTextStyle,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextFormField(
                      enabled: false,
                      controller: ctxLl,
                      decoration: InputDecoration(
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
                        fillColor: Colors.white,
                        filled: true,
                        hintText: '',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Aspek lain',
                    style: cBlackTextStyle,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextFormField(
                      enabled: false,
                      controller: ctxAl1,
                      decoration: InputDecoration(
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
                        fillColor: Colors.white,
                        filled: true,
                        hintText: '',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Aspek lain',
                    style: cBlackTextStyle,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextFormField(
                      enabled: false,
                      controller: ctxAl2,
                      decoration: InputDecoration(
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
                        fillColor: Colors.white,
                        filled: true,
                        hintText: '',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: cBlackTextStyle,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextFormField(
                      enabled: false,
                      controller: ctxTotal,
                      decoration: InputDecoration(
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
                        fillColor: Colors.white,
                        filled: true,
                        hintText: '',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
        SizedBox(height: 200),
      ],
    );
  }
}
