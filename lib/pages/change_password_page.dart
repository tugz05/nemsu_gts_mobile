import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nemsu_gts/components/Clickable/ImageView_Design.dart';
import 'package:nemsu_gts/components/Clickable/TButton.dart';
import 'package:nemsu_gts/components/Clickable/TTextButton.dart';
import 'package:nemsu_gts/components/Container/EntryWithLabel.dart';
import 'package:nemsu_gts/pages/sign_in.dart';
import 'package:nemsu_gts/pages/verification_page.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

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
                    'New Password',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: Color.fromRGBO(13, 110, 253, 1),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Enter your new password ',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color.fromRGBO(155, 157, 196, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  EntryWithLabel( labelText:"New Password", hintText:  "Enter new password", 
                    borderColor: const Color.fromRGBO(62, 68, 145, 0.25),
                    ),
                  EntryWithLabel( labelText:"Confirm new password", hintText:  "Confirm new password", 
                    borderColor: const Color.fromRGBO(62, 68, 145, 0.25),
                    ),
                  SizedBox(height: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TButton(buttonText: "CHANGE MY PASSWORD", route: () => SignInPage(), textColor: const Color.fromRGBO(255, 255, 255, 1),),
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