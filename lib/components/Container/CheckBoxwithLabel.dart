import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class CheckBoxwithLabel extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool?>? onChanged;
  final String privacyPolicyText;
  final String termsAndConditionsText;

  const CheckBoxwithLabel({
    Key? key,
    required this.initialValue, // Added initialValue
    required this.onChanged,
    required this.privacyPolicyText,
    required this.termsAndConditionsText,
  }) : super(key: key);

  @override
  _CheckBoxButtonState createState() => _CheckBoxButtonState();
}

class _CheckBoxButtonState extends State<CheckBoxwithLabel> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.initialValue; // Initialize _isChecked with initialValue
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value ?? false; // Update _isChecked
              widget.onChanged?.call(value);
            });
          },
          activeColor: Color.fromRGBO(13, 110, 253, 1),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: 'By using the App, you acknowledge that you have read and agreed to the ',
              style: TextStyle(color: const Color.fromRGBO(62, 68, 145, 0.75)),
              children: [
                TextSpan(
                  text: widget.privacyPolicyText,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Handle the privacy policy link tap
                      print('Privacy Policy tapped');
                    },
                ),
                TextSpan(text: ' and the '),
                TextSpan(
                  text: widget.termsAndConditionsText,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Handle the terms and conditions link tap
                      print('Terms and Conditions tapped');
                    },
                ),
                TextSpan(text: '.'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
