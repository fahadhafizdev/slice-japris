import 'package:flutter/material.dart';
import 'package:frontend_japris/module/page/user_modul/menu_user/meu_controller.dart';
import 'package:frontend_japris/module/shared/theme.dart';
import 'package:get/get.dart';

import '../../login_page.dart';

class BerandaUser extends StatelessWidget {
  const BerandaUser({super.key});

  @override
  Widget build(BuildContext context) {
    MenuXController c = Get.find();

    Widget btnLogout() {
      return Obx(
        () => c.showlogout.value
            ? GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: ((context) => LoginPage())),
                      (route) => false);
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 40,
                    width: 100,
                    margin: EdgeInsets.fromLTRB(12, 80, 12, 0),
                    color: cGrey,
                    child: Center(
                      child: Text(
                        'Logout',
                        style: cBlackTextStyle.copyWith(fontWeight: semiBold),
                      ),
                    ),
                  ),
                ),
              )
            : SizedBox(),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: tinggi * 0.20,
              width: double.infinity,
              color: cBlue,
            ),
          ),
          GestureDetector(
            onTap: () {
              c.showlogout.value = !c.showlogout.value;
            },
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 54,
                width: 150,
                margin: const EdgeInsets.fromLTRB(0, 17, 32, 0),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 110,
                        height: 25,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(color: cBlack),
                        child: Text(
                          'Selamat datang, Roy',
                          style: cWhiteTextStyle.copyWith(fontSize: 8),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.account_circle,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 159,
                  margin: EdgeInsets.fromLTRB(24, tinggi * 0.12, 24, 0),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: cBlue2.withOpacity(0.09),
                        blurRadius: 32,
                        spreadRadius: 8,
                        offset: const Offset(0, -8), // Shadow position
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.account_circle,
                        size: 50,
                      ),
                      const SizedBox(width: 7),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Selamat datang, Roy!',
                            style: cBlackTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 9),
                          Text(
                            'ID : 123456789',
                            style: cBlackTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 9),
                          Text(
                            'Engineer Staff',
                            style: cBlackTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 47),
                Align(
                  child: Text(
                    'Silahkan Pilih menu dibawah ini :',
                    style: cBlackTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(37, 0, 37, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      c.change(1);
                    },
                    style: btnHome,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Presensi',
                          style: cBlackTextStyle.copyWith(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 10),
                        Image.asset(
                          'assets/calendar.png',
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(37, 0, 37, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      c.change(2);
                    },
                    style: btnHome,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Laporan Target Kerja Harian',
                          style: cBlackTextStyle.copyWith(
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 10),
                        Image.asset(
                          'assets/new.png',
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(37, 0, 37, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      c.change(3);
                    },
                    style: btnHome,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Laporan Slip Gaji',
                          style: cBlackTextStyle.copyWith(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Rp.',
                          style: cBlackTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          btnLogout(),
        ],
      ),
    );
  }
}
