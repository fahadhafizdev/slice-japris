import 'package:flutter/material.dart';

import '../shared/theme.dart';

class CustomContain extends StatelessWidget {
  final String data;
  final List<Widget> children;
  const CustomContain({
    super.key,
    required this.data,
    this.children = const <Widget>[],
  });

  @override
  Widget build(BuildContext context) {
    Widget topNavbar() {
      return Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 92,
          width: double.infinity,
          color: cBlue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Container(
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
            ],
          ),
        ),
      );
    }

    Widget title() {
      return Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 50,
          margin: EdgeInsets.fromLTRB(24, tinggi * 0.09, 24, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
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
          child: Center(
            child: Text(
              data,
              style: cBlackTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            children: children,
          ),
        ),
      );
    }

    return Stack(
      children: [
        content(),
        topNavbar(),
        title(),
      ],
    );
  }
}
