import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nemsu_gts/pages/sign_in.dart';

class TButton extends StatelessWidget {
  final Color? textColor;
  final Color? buttonColor;
  final String buttonText;
  final double? width;
  final Widget Function() route;

  const TButton({
    Key? key,
    this.textColor,
    this.buttonColor,
    required this.buttonText,
    required this.route,
    this.width, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 200),
            transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
              return route(); // Call the route function to get the widget
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: width ?? 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: buttonColor ?? Color.fromRGBO(13, 110, 253, 1),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
