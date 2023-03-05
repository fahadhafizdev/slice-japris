import 'package:flutter/material.dart';
import 'package:frontend_japris/module/shared/theme.dart';

class CustomTileV1 extends StatelessWidget {
  final String title;
  final Function() onTap;
  const CustomTileV1({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(37, 0, 37, 50),
      child: ElevatedButton(
        style: btnHome,
        onPressed: onTap,
        child: Text(
          title,
          style: cBlackTextStyle.copyWith(
            fontWeight: FontWeight.normal,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
