import 'package:flutter/material.dart';


class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset("assets/images/bg_blue.png"),
          ),
          Positioned(
            top: -20,
            child: Image.asset("assets/images/bg_grey.png",
              fit: BoxFit.fill,
              width: size.width,
            ), 
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset("assets/images/bg_orange.png"),),
              child
        ],
      ),
    );
  }
}
