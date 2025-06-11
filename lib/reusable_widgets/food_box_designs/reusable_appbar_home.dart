import 'dart:core';

import 'package:flutter/material.dart';
import 'package:get_storage_pro/get_storage_pro.dart';

import '../../utils/screen_colors.dart';

class HomeAppBar extends StatelessWidget {
  final String image;
  final Color? color;
  final String title;
  final String? latTitle;
  final String? longTitle;
  final String? subtitle;
  final String? subtitleTwo;
  final String? imageTwo;
  final VoidCallback? onPressed;


  const HomeAppBar({
    super.key,
    required this.image,
    required this.title,
    this.imageTwo,
    this.color,
    this.subtitle,
    this.subtitleTwo,
    this.latTitle,
    this.longTitle,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      width: MediaQuery.of(context).size.width * 0.99,
      child: (subtitle != null &&
                  subtitleTwo != null &&
                  latTitle != null &&
                  longTitle != null &&
                  imageTwo != null)
              ? ListTile(
                leading: Image.asset(image),
                title: Text(
                  title,
                  style: TextStyle(
                    color: color,
                    fontFamily: 'FontSen',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      latTitle!,
                      style: TextStyle(
                        fontFamily: 'FontSen',
                        fontWeight: FontWeight.w400,
                        color: SColors.textColorBlack,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      subtitle!,
                      style: TextStyle(
                        fontFamily: 'FontSen',
                        fontWeight: FontWeight.w400,
                        color: SColors.textColorBlack,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                    Text(
                      longTitle!,
                      style: TextStyle(
                        fontFamily: 'FontSen',
                        fontWeight: FontWeight.w400,
                        color: SColors.textColorBlack,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                    Text(
                      subtitleTwo!,
                      style: TextStyle(
                        fontFamily: 'FontSen',
                        fontWeight: FontWeight.w400,
                        color: SColors.textColorBlack,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                trailing: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.black),
                    child: Image.asset(
                      'assets/images/add_bag.png',
                      color: Colors.white,
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.06,
                    ),
                  ),
                ),
              )
              : (onPressed != null)
              ? ListTile(
                leading: InkWell(onTap: onPressed, child: Image.asset(image)),
                title: Text(
                  title,
                  style: TextStyle(
                    color: color,
                    fontFamily: 'FontSen',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                trailing: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: SColors.inputBoxColorLightGreen,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Image.asset(
                        imageTwo!,
                        color: SColors.textColorBlack,
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width * 0.07,
                      ),
                    ),
                  ),
                ),
              )
              : (imageTwo == null)
              ? ListTile(
                leading: InkWell(onTap: onPressed, child: Image.asset(image)),
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: color,
                      fontFamily: 'FontSen',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
              : SizedBox(),
    );
  }
}
