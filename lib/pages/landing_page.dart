import 'package:flutter/material.dart';
import 'package:nemsu_gts/components/Clickable/TButton.dart';
import 'package:nemsu_gts/components/Container/CustomWebView.dart';
import 'package:nemsu_gts/components/clip_path.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nemsu_gts/Routes/Controller.dart';
import 'package:nemsu_gts/pages/sign_in.dart';
import 'package:nemsu_gts/pages/sign_up.dart';

class MyLandingPage extends StatelessWidget {
  const MyLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomClipPath(),
            SizedBox(height: 100,),
            TButton(
              route: () => const SignInPage(),
              textColor: Colors.white,
              buttonText: 'SIGN IN',
            ),
            SizedBox(height: 20,),
            TButton(
              route: () =>  SignUpPage(),
              textColor: Color.fromRGBO(13, 110, 253, 1),
              buttonText: 'CREATE ACCOUNT',
              buttonColor: const Color.fromRGBO(210, 228, 255, 1),
            ),
            SizedBox(height: 18,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return PopUpWebView(urlText: "https://gtsnemsu.online/about",);
                      },
                    );
                  }, 
                  child: Text(
                    'About',
                    style: GoogleFonts.inter(
                      color: Color.fromRGBO(13, 110, 253, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Text(
                  '|',
                  style: GoogleFonts.inter(
                    color: Color.fromRGBO(13, 110, 253, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return PopUpWebView(urlText: "https://gtsnemsu.online/privacy-policy",);
                      },
                    );
                  },
                  child: Text(
                    'Privacy Policy',
                    style: GoogleFonts.inter(
                      color: Color.fromRGBO(13, 110, 253, 1),
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
