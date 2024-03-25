import 'package:flutter/material.dart';
import 'package:nemsu_gts/components/Clickable/ImageView_Design.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nemsu_gts/components/Clickable/TButton.dart';
import 'package:nemsu_gts/components/Clickable/TTextButton.dart';
import 'package:nemsu_gts/components/Container/EntryWithLabel.dart';
import 'package:nemsu_gts/pages/password_recovery.dart';
import 'package:nemsu_gts/pages/sign_up.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                ImageViewDesign(
                  imagePath: 'lib/assets/images/back_icon.png',
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: 20),
                Text(
                  'Sign In',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: Color.fromRGBO(13, 110, 253, 1),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Enter your account to continue',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color.fromRGBO(155, 157, 196, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                EntryWithLabel(
                  labelText: "Email or Phone",
                  isPassword: false,
                  hintText: "Enter Email or Phone",
                  borderColor: Color.fromRGBO(155, 157, 196, 1),
                ),
                // SizedBox(height: 10),
                EntryWithLabel(
                  labelText: "Password",
                  isPassword: true,
                  hintText: "Enter Password",
                  borderColor: Color.fromRGBO(155, 157, 196, 1),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TTextButton(
                      route: () => const PasswordRecovery(),
                      textLabel: "Forgot Password?",
                    ),
                    SizedBox(width: 15),
                  ],
                ),
                SizedBox(height: 30),
                TButton(
                  route: () => SignInPage(), // Change this to the correct route
                  textColor: Colors.white,
                  buttonText: 'SIGN IN',
                ),
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'No account yet? ',
                      style: GoogleFonts.inter(
                        color: Color.fromRGBO(13, 110, 253, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TTextButton(
                      textLabel: "Sign Up here",
                      route: () => SignUpPage(),
                      TfontWeight: FontWeight.w700,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
