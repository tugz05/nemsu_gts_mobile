import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EntryWithLabel extends StatefulWidget {
  final String hintText;
  final Color borderColor;
  final bool isPassword;
  final String labelText;

  const EntryWithLabel({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.borderColor,
    this.isPassword = false,
  }) : super(key: key);

  @override
  _EntryWithLabelState createState() => _EntryWithLabelState();
}

class _EntryWithLabelState extends State<EntryWithLabel> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                widget.labelText,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromRGBO(155, 157, 196, 1),
                ),
              ),
            ],
          ),
          TextField(
            obscureText: _obscureText,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color.fromRGBO(62, 68, 145, 0.25),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: widget.borderColor),
              ),
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(_obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                      color: const Color.fromRGBO(13, 110, 253, 1),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
