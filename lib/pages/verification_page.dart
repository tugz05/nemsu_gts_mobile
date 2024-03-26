import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nemsu_gts/components/Clickable/ImageView_Design.dart';
import 'package:nemsu_gts/components/Clickable/TButton.dart';
import 'package:nemsu_gts/components/Clickable/TTextButton.dart';
import 'package:nemsu_gts/components/Container/EntryWithLabel.dart';
import 'package:nemsu_gts/pages/change_password_page.dart';
import 'package:nemsu_gts/pages/sign_in.dart';
import 'package:nemsu_gts/pages/verification_page.dart';

class SendVerificationPage extends StatelessWidget {
  const SendVerificationPage({super.key});

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
                    'Verify your account',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: Color.fromRGBO(13, 110, 253, 1),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Enter the code we’ve sent to verify your account. ',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color.fromRGBO(155, 157, 196, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  EntryWithLabel( labelText:"", hintText:  "Enter verification code", 
                    borderColor: const Color.fromRGBO(62, 68, 145, 0.25),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TButton(buttonText: "VERIFY ACCOUNT", route: () => ChangePasswordPage(), textColor: const Color.fromRGBO(255, 255, 255, 1),),
                      SizedBox(height: 20,),
                      TButton(buttonText: "RESEND CODE", route: () => SendVerificationPage(), textColor: const Color.fromRGBO(13, 110, 253, 1), buttonColor: const Color.fromRGBO(210, 228, 255, 1),),
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