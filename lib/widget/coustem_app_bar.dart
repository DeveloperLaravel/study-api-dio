// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_study_api_dio/core/colors/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class CoustemAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CoustemAppBar({super.key, required this.isBlackk});
  final bool isBlackk;
  @override
  Size get preferredSize => const Size.fromHeight(90);
  @override
  Widget build(BuildContext context) {
    bool isBlack = isBlackk;
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child: AppBar(
        centerTitle: true,
        // ignore: dead_code
        backgroundColor: isBlack ? AppColor.primary : Colors.white,
        leadingWidth: 25,
        leading: SvgPicture.asset(
          'assets/svgs/menu.svg',
          // ignore: dead_code
          color: isBlack ? Colors.white : AppColor.primary,
        ),
        // ignore: dead_code
        title: SvgPicture.asset(
          'assets/svgs/Logo.svg',
          // ignore: dead_code
          color: isBlack ? Colors.white : AppColor.primary,
        ),
        actions: [
          // Icon(Icons.search),
          // Icon(Icons.shopping_bag_outlined),
          // ignore: dead_code
          SvgPicture.asset(
            'assets/svgs/Search.svg',
            // ignore: dead_code
            color: isBlack ? Colors.white : Color(0xff111111),
          ),
          Gap(20),
          // ignore: dead_code
          SvgPicture.asset(
            'assets/svgs/shoppingbag.svg',
            // ignore: dead_code
            color: isBlack ? Colors.white : Color(0xff111111),
          ),
        ],
      ),
    );
  }
}
