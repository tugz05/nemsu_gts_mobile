import 'package:flutter/material.dart';
import 'package:nemsu_gts/pages/landing_page.dart';
import 'package:nemsu_gts/pages/sign_in.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLandingPage(),
      routes: {
        '/signin':(context) => SignInPage(),

      },
    );
  }
}