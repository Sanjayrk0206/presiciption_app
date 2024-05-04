import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: const BorderRadius.only(
                    topRight: Radius.zero,
                    bottomRight: Radius.circular(30),
                    topLeft: Radius.zero,
                    bottomLeft: Radius.circular(30))),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(5.0, 40.0, 0, 0),
                  child: IconButton.filled(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                ),
                Transform.translate(
                    offset: const Offset(0, -20),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/Signup_1.svg',
                          semanticsLabel: 'Sign Up Vector',
                          height: 200,
                          width: 300,
                        ),
                        Container(
                            alignment: Alignment.topCenter,
                            child: Text(
                              'Medirecord',
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w700)),
                            )),
                        Container(
                            padding: const EdgeInsets.only(top: 5),
                            alignment: Alignment.topCenter,
                            child: Text(
                              'Join today to easily manage your medical records!',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(fontSize: 16.0)),
                            ))
                      ],
                    )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey))),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey))),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          hintText: 'Full Name',
                          hintStyle: TextStyle(color: Colors.grey))),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(color: Colors.grey))),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: OutlinedButton(
                      style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                            vertical: 13, horizontal: 100)),
                        overlayColor: MaterialStatePropertyAll(
                            Color.fromRGBO(255, 255, 255, 0.4)),
                      ),
                      onPressed: () {},
                      child: Text('Get Started',
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)))),
                ),
              ],
            ),
          )
        ])));
  }
}
