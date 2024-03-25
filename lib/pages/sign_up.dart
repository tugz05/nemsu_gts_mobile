import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nemsu_gts/components/Clickable/ImageView_Design.dart';
import 'package:nemsu_gts/components/Clickable/TButton.dart';
import 'package:nemsu_gts/components/Clickable/TTextButton.dart';
import 'package:nemsu_gts/components/Container/CheckBoxwithLabel.dart';
import 'package:nemsu_gts/components/Container/EntryWithLabel.dart';
import 'package:nemsu_gts/pages/password_recovery.dart';
import 'package:nemsu_gts/pages/sign_in.dart';
import 'package:nemsu_gts/components/Container/DropDownWithLabel.dart';

class SignUpPage extends StatelessWidget {
  final List<String> Campuses = [
    'Tandag',
    'San Miguel',
    'Cantilan',
    // Add more options as needed
  ];
  final List<String> Courses = [
    'BSCS',
    'BS - IT',
    // Add more options as needed
  ];
 SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 40),
                ImageViewDesign(
                  imagePath: 'lib/assets/images/back_icon.png',
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: 5),
                Text(
                  'Create an Account',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w800,
                    fontSize: 24,
                    color: Color.fromRGBO(13, 110, 253, 1),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Create an account to get started',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color.fromRGBO(155, 157, 196, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                EntryWithLabel(
                  labelText: "First Name",
                  isPassword: false,
                  hintText: "Enter First Name",
                  borderColor: Color.fromRGBO(155, 157, 196, 1),
                ),
                // SizedBox(height: 10),
                EntryWithLabel(
                  labelText: "M.I / Middle Initial",
                  isPassword: false,
                  hintText: "Enter Middle Initial",
                  borderColor: Color.fromRGBO(155, 157, 196, 1),
                ),
                SizedBox(height: 10),
                EntryWithLabel(
                  labelText: "Last Name",
                  isPassword: false,
                  hintText: "Enter Last Name",
                  borderColor: Color.fromRGBO(155, 157, 196, 1),
                ),
                SizedBox(height: 20),
                DropdownWithLabel(labelText: "Campus", hintText: "Choose Campus", 
                  borderColor: Color.fromRGBO(155, 157, 196, 1), 
                  dropdownItems: Campuses),
                DropdownWithLabel(labelText: "Course", hintText: "Choose Campus", 
                  borderColor: Color.fromRGBO(155, 157, 196, 1), 
                  dropdownItems: Courses),
                
               EntryWithLabel(
                  labelText: "Email Address",
                  isPassword: false,
                  hintText: "Enter Email Address",
                  borderColor: Color.fromRGBO(155, 157, 196, 1),
                ), 
              EntryWithLabel(
                  labelText: "Phone No.",
                  isPassword: false,
                  hintText: "Enter Phone Number",
                  borderColor: Color.fromRGBO(155, 157, 196, 1),
                ),
                EntryWithLabel(
                  labelText: "Password",
                  isPassword: true,
                  hintText: "Enter Password",
                  borderColor: Color.fromRGBO(155, 157, 196, 1),
                ),
                EntryWithLabel(
                  labelText: "Confirm Password",
                  isPassword: true,
                  hintText: "Confirm Password",
                  borderColor: Color.fromRGBO(155, 157, 196, 1),
                ),
                SizedBox(height: 30,),
                CheckBoxwithLabel(
                  initialValue: false, // Set initial value here
                  onChanged: (newValue) {
                    // Handle checkbox state change
                    print('Checkbox value changed: $newValue');
                  },
                  privacyPolicyText: 'Privacy Policy',
                  termsAndConditionsText: 'Terms and Conditions',
                ),

                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TButton(
                    route: () => SignInPage(), // Change this to the correct route
                    textColor: Colors.white,
                    buttonText: 'CREATE',
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TTextButton(textLabel: "Sign in", route: () => SignInPage(),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}