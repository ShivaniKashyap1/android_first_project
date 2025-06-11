import 'package:flutter/material.dart';

import '../../utils/screen_colors.dart';
class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SColors.appPrimaryWhite,
      appBar: AppBar(
        title: Text('WELCOME TO verification screen'),
      ),
    );
  }
}
