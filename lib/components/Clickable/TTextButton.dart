import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextButton extends StatelessWidget {
  final String textLabel;
  final Widget Function() route;
  final FontWeight TfontWeight;
  final String? url;
  const TTextButton({
    Key? key,
    required this.textLabel,
    this.url,
    required this.route,
    this.TfontWeight = FontWeight.w500,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 200),
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) {
              return route();
            },
          ),
        );
      },
      child: Text(
        textLabel,
        style: GoogleFonts.inter(
          color: Color.fromRGBO(13, 110, 253, 1),
          fontSize: 15,
          fontWeight: TfontWeight,
        ),
      ),
    );
  }
}
