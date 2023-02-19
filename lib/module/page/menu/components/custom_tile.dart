import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontend_japris/module/page/menu/meu_controller.dart';
import 'package:frontend_japris/module/shared/theme.dart';
import 'package:get/get.dart';

class CustomTile extends StatelessWidget {
  final String icon;
  final String title;
  final bool isActive;
  final int page;
  const CustomTile({
    super.key,
    required this.title,
    required this.icon,
    this.isActive = false,
    this.page = 0,
  });

  @override
  Widget build(BuildContext context) {
    MenuController c = Get.find();
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        c.change(page);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            height: 22,
            width: 22,
            color: isActive ? cBlue : Colors.grey,
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: cBlackTextStyle.copyWith(
              color: isActive ? cBlue : Colors.grey,
              fontWeight: bold,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
