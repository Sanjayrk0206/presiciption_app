import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:presiciption_app/signup/signup.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: SvgPicture.asset(
                'assets/images/Intro.svg',
                semanticsLabel: 'Intro Vector',
                height: 300,
                width: 400,
              ),
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Text('Keep your medical records',
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w600)))),
                    ),
                    Container(
                        padding: const EdgeInsets.only(
                          bottom: 50,
                        ),
                        child: Text(
                            'Easily record and organize your medical records, sort them by data and categories, and attach tags for better',
                            style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(fontSize: 18.0)))),
                  ],
                )),
            Align(
              alignment: Alignment.bottomCenter,
              child: FilledButton(
                  style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 13, horizontal: 130)),
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary),
                      overlayColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.secondary)),
                  onPressed: () {
                    Navigator.of(context).push(_createRoute());
                  },
                  child: Text('Start Now',
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w700)))),
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const SignUp(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
