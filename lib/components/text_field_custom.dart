import 'package:flutter/material.dart';


class TextFieldCustom extends StatelessWidget {
  final TextEditingController? nameCtl;
  final String hintText;
  final Color bgColor;
  final TextStyle textStyle;
  const TextFieldCustom({
    Key? key,
    required this.nameCtl, 
    required this.hintText, 
    required this.bgColor,
    required this.textStyle,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 40,
      ),
      child: Container(
        width: double.infinity,
        height: 60,
        padding: EdgeInsets.fromLTRB(20, 7, 20, 0),
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: bgColor
        ),
        child: TextField(
          controller: nameCtl ,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle:  textStyle
          ),
        ),
      ),
    );
  }
}