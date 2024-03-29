// TDrawerComponents.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TDrawerComponents extends StatelessWidget {
  final String menuTitle;
  final String menu1;
  final String menu2;
  final String menu3;
  final VoidCallback? onTapMenu1;
  final VoidCallback? onTapMenu2;
  final VoidCallback? onTapMenu3;

  const TDrawerComponents({
    Key? key,
    required this.menuTitle,
    required this.menu1,
    required this.menu2,
    required this.menu3,
    this.onTapMenu1,
    this.onTapMenu2,
    this.onTapMenu3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          menuTitle,
          textAlign: TextAlign.left,
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
        const SizedBox(height: 10),
        GestureDetector(
          onTap: onTapMenu1 != null ? onTapMenu1 : () {},
          child: Container(
            width: 300,
            child: Text(
              menu1,
              textAlign: TextAlign.left,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: onTapMenu2 != null ? onTapMenu2 : () {},
          child: Container(
            width: 300,
            child: Text(
              menu2,
              textAlign: TextAlign.left,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: onTapMenu3 != null ? onTapMenu3 : () {},
          child: Container(
            width: 300,
            child: Text(
              menu3,
              textAlign: TextAlign.left,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
