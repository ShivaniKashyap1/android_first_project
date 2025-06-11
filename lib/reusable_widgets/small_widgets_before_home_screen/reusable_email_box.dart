import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/screen_colors.dart';

class InputBox extends StatefulWidget {
  final String inputName;
  final String inputTitle;

  final TextEditingController controllerName;

  const InputBox({
    super.key,
    required this.inputName,
    required this.inputTitle,
    required this.controllerName,
  });

  @override
  State<InputBox> createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.inputTitle,
          style: TextStyle(
            fontFamily: 'FontSen',
            fontWeight: FontWeight.w400,
            color: SColors.textColorBlack,
            fontSize: 18,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        // email box...
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: SColors.inputBoxColorLightGreen,
            hintText: widget.inputName,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: SColors.inputBoxColorLightGreen),
              borderRadius: BorderRadius.circular(10),
            ),

            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: SColors.inputBoxColorLightGreen),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          style: TextStyle(
            fontSize: 33,
            fontFamily: 'FontSen',
            fontWeight: FontWeight.w400,
            color: SColors.textColorBlack,
          ),
        ),
      ],
    );
  }
}
