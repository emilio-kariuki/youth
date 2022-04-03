import 'package:flutter/material.dart';
// import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SocalIcon extends StatelessWidget {
  final String iconSrc;
  final Function() press;
  const SocalIcon({Key? key, required this.iconSrc, required this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Color.fromARGB(255, 11, 27, 6),
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}