import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nemsu_gts/pages/Dashboard/job_postings.dart';
import 'package:nemsu_gts/pages/Dashboard/my_dashboard.dart';

class TDrawerComponents extends StatelessWidget {
  final String menuTitle;
  final String menu1;
  final String menu2;
  final String menu3;

  const TDrawerComponents({Key? key,
  required this.menuTitle,
  required this.menu1,
  required this.menu2,
  required this.menu3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start, // Align components to the left
      children: [
        Text(
          menuTitle,
          textAlign: TextAlign.left, // Align text to the left
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w400,
            fontSize: 10,
            color: Colors.white,
          ),
        ),
        const Divider(
          color: Color.fromRGBO(234, 230, 253, 0.25),
          thickness: 1,
        ),
        // Add more widgets here if needed
        const SizedBox(height: 10,),
           GestureDetector(
             child: Container(
              width: 300,
               child: Text(
                menu1, 
                  textAlign: TextAlign.left,
                  style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),
                         ),
             ),
           ),
        const SizedBox(height: 20,),
          Container(
            width: 300,
            child: Text(
              menu2, 
                textAlign: TextAlign.left,
                style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white
              ),
            ),
          ),
        const SizedBox(height: 20,),
          Container(
            width: 300,
            child: Text(
              menu3, 
                textAlign: TextAlign.left,
                style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white
              ),
            ),
          ),


        
      ],
    );
  }
}
