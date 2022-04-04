import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(

    body: SafeArea(
      child: Stack(
        children: [
         
          Column(
            children: [
               SizedBox(height: size.height * 0.05),
              Padding(
                padding: const EdgeInsets.only(left : 10),
                child: Container(
                  height: size.height * 0.09,
                  width: size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset('assets/images/profile.svg',height: size.height * 0.09,width: size.width * 0.2,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("""Praise the
                              Lord """, style: GoogleFonts.roboto(fontSize: 28, color: Colors.black,fontWeight: FontWeight.w400)),
              )
            ],
          ),
        ],    ),
    ),
      
      );
  }
}