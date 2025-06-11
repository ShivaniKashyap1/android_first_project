import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get_storage_pro/get_storage_pro.dart';

import '../../utils/screen_colors.dart';

class HomeAppBarNew extends StatelessWidget {
  final Widget leadingIcon;
  final String title;
  final Widget? trailingIcon;

  const HomeAppBarNew({
    super.key,
    required this.leadingIcon,
    required this.title,
    this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      width: MediaQuery.of(context).size.width * 0.99,
      child: ListTile(
        leading: leadingIcon,
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'FontSen',
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        trailing: trailingIcon,
      ),
    );
  }
}
