import 'package:flutter/material.dart';
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
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 21, 20, 27),
        title: Text("Youth Parish",style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w500)),
        elevation: 0,

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: size.height * 0.15,
          width: size.width,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors. blueGrey,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1, color: const Color.fromARGB(255, 8, 9, 14))
          ),
        ),
      ),
      );
  }
}