// ignore_for_file: deprecated_member_use

import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        ClipPath(
          clipper: MyClipper(),
          child: Container(
              height: size.height * 0.4,
              width: size.width,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 41, 5, 18),
                shape: BoxShape.rectangle,
              )),
        ),
        Positioned(
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: size.height * 0.6,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 63, 41, 41),
                ),
                child: const LoginContents(),
              ),
            ),
          ),
        )
      ],
    )));
  }
}

class LoginContents extends StatefulWidget {
  const LoginContents({Key? key}) : super(key: key);

  @override
  State<LoginContents> createState() => _LoginContentsState();
}

class _LoginContentsState extends State<LoginContents> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        // SizedBox(height: size.height * 0.1),
        Container(
          height: size.height * 0.6,
          width: size.width * 0.8,
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
                elevation: 0,
                backgroundColor: Colors.transparent,
                bottom: TabBar(
                  indicator: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 185, 40),
                      borderRadius: BorderRadius.circular(25.0)),

                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(
                        child: Text("Plastic",
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: const Color.fromARGB(255, 206, 99, 0),
                                fontWeight: FontWeight.w500))),
                    Tab(
                        child: Text("Metal",
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                // ignore: prefer_const_constructors
                                color: Color.fromARGB(255, 206, 99, 0),
                                fontWeight: FontWeight.w500))),
                  ],
                ),
              ),
              body: Container(
                height: size.height * 0.5,
                color: Colors.blue,
                child: TabBarView(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          SizedBox(height: size.height * 0.02),
                          Padding(
                            
                            padding: const EdgeInsets.fromLTRB(10, 1, 10, 0),
                            child: TextFormField(
                              obscureText: false,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  // icon: Icon(Icons.mail,size:30,color: Colors.black),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey[800]),
                                  hoverColor: Colors.red,
                                  hintText: "Email",
                                  prefixIcon: Icon(Icons.mail,
                                      color: Colors.blueGrey[900]),
                                  fillColor: Colors.grey[200]),
                              controller: email,
                            ),
                          ),
                          SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 1, 30, 0),
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  // icon: Icon(Icons.mail,size:30,color: Colors.black),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey[800]),
                                  hoverColor: Colors.red,
                                  hintText: "password",
                                  prefixIcon: Icon(Icons.lock,
                                      color: Colors.blueGrey[900]),
                                  fillColor: Colors.grey[200]),
                              controller: password,
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                    Container()
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  FlatButton button(String name) {
    return FlatButton(
      disabledColor: Colors.white,
      disabledTextColor: const Color.fromARGB(255, 206, 99, 0),
      color: const Color.fromARGB(255, 255, 255, 255),
      onPressed: () {},
      child: Text(name,
          style: GoogleFonts.roboto(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: const Color.fromARGB(255, 206, 99, 0))),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      minWidth: MediaQuery.of(context).size.width * 0.35,
      height: MediaQuery.of(context).size.height * 0.06,
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    var controllPoint = Offset(50, size.height);
    var endPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(
        controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
