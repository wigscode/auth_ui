import 'package:flutter/material.dart';


class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
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
            top: -20,
            child: Image.asset(
              "assets/images/eclipse_top.png",
              fit: BoxFit.fill,
              width: size.width,
            ),
          ),
          Positioned(
            bottom: -10,
            right: 0,
            child: Image.asset("assets/images/eclipse_bottom.png")),
            child
        ],
      ),
    );
  }
}
