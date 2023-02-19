import 'package:flutter/material.dart';
import 'package:frontend_japris/module/shared/theme.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          Align(
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
                  height: 50,
                  margin: EdgeInsets.fromLTRB(37, 0, 37, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BerandaPage(),
                        ),
                      );
                    },
                    style: btnHome,
                    child: Text(
                      'Presensi',
                      style: cBlackTextStyle.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(37, 0, 37, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BerandaPage(),
                        ),
                      );
                    },
                    style: btnHome,
                    child: Text(
                      'Laporan Target Kerja Harian',
                      style: cBlackTextStyle.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BerandaPage(),
                        ),
                      );
                    },
                    style: btnHome,
                    child: Text(
                      'Laporan Slip Gaji',
                      style: cBlackTextStyle.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
