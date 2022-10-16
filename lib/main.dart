import 'package:doctor_appointment/page/detaildoctor.dart';
import 'package:doctor_appointment/page/homepage.dart';
import 'package:doctor_appointment/page/startpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      home: StartPage(),
    );
  }
}
