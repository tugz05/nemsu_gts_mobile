import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropdownWithLabel extends StatefulWidget {
  final String hintText;
  final Color borderColor;
  final List<String> dropdownItems;
  final String labelText;

  const DropdownWithLabel({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.borderColor,
    required this.dropdownItems,
  }) : super(key: key);

  @override
  _DropdownWithLabelState createState() => _DropdownWithLabelState();
}

class _DropdownWithLabelState extends State<DropdownWithLabel> {
  String? _selectedItem;

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
          DropdownButtonFormField<String>(
            value: _selectedItem,
            items: widget.dropdownItems.map((item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedItem = value;
              });
            },
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
            ),
          ),
        ],
      ),
    );
  }
}
