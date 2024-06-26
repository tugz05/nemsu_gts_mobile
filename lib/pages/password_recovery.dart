import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nemsu_gts/components/Clickable/ImageView_Design.dart';
import 'package:nemsu_gts/components/Clickable/TButton.dart';
import 'package:nemsu_gts/components/Clickable/TTextButton.dart';
import 'package:nemsu_gts/components/Container/EntryWithLabel.dart';
import 'package:nemsu_gts/pages/sign_in.dart';
import 'package:nemsu_gts/pages/verification_page.dart';

class PasswordRecovery extends StatelessWidget {
  const PasswordRecovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
                  ImageViewDesign(
                    imagePath: 'lib/assets/images/back_icon.png',
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Forgot Password',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: Color.fromRGBO(13, 110, 253, 1),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Enter your registered email or phone and we’ll send your verification code.',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color.fromRGBO(155, 157, 196, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  EntryWithLabel( labelText:"", hintText:  "Enter email or phone", 
                    borderColor: const Color.fromRGBO(62, 68, 145, 0.25),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TButton(buttonText: "SEND VERIFICATION CODE", route: () => SendVerificationPage(), textColor: Colors.white,),
                      SizedBox(height: 200,),
                      TTextButton(textLabel: "Go back to sign in page", route: () => const SignInPage())
                    ],
                  ),
                  
                  
            ],
          ),
        ),
      ),
    );
  }
}