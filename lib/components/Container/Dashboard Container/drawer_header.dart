import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TDrawerHeader extends StatelessWidget {
  const TDrawerHeader({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 67,
            height: 67,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(13, 110, 253, 1),
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
                BoxShadow(
                  color: const Color.fromRGBO(0, 0, 0, 0.1), // outer color
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
                
              ],
            ),
            child: Center(
              child: Text(
                'J',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'John Doe',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Colors.white
                ),),
                Text(
            'johndoe@email.com',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Colors.white
            ),)
            ],
          ),
            
        ],
      ),
      
    );
  }
}
