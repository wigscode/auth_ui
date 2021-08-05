import 'package:flutter/material.dart';


class ButtonCustom extends StatelessWidget {

final String text;
final double width, height;
final Color bgColor;
final VoidCallback press;
  const ButtonCustom({
    Key? key, 
    required this.text,
    required this.width,
    required this.height,
    required this.bgColor,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: width,
            height: 9,
            decoration: BoxDecoration(
              color: bgColor
            ),
          ),
          Container(
            width: width,
            height: height,
            alignment: Alignment.topCenter,
            child: Text(text,
              style: TextStyle(
                fontFamily: "FuturaHv",
                fontSize: 18,
                color: Colors.black
              ),
            ),
          )
        ],
      ),
    );
  }
}