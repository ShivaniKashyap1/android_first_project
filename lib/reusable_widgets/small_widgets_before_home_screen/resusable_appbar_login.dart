import 'package:flutter/material.dart';

import '../../utils/screen_colors.dart';

class AppBarLogin extends StatelessWidget {
  final String text;
  final String title;

  const AppBarLogin({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.30,
      width: double.infinity,
      child:DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.zero,
          color: SColors.loginAppBarNavyBlue,
        ),
        child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/login_appbar.png',
          ),
          SizedBox(height:MediaQuery.of(context).size.height * 0.03 ,),
          Align(
            alignment: Alignment.center,
              child: Text(text,
              style: TextStyle(
                  fontFamily: 'FontSen',
                  fontWeight: FontWeight.w700,
                  color: SColors.appPrimaryWhite,
                  fontSize: 23,
              ),
              ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(title,
              style: TextStyle(
                fontFamily: 'FontSen',
                fontWeight: FontWeight.w500,
                color: SColors.appPrimaryWhite,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }
}
