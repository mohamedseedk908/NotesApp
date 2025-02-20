import 'package:flutter/material.dart';
import 'package:notes/views/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,this.maxLines = 1 });
final String hint;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: ConstantsColors.kPrimaryColors,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: ConstantsColors.kPrimaryColors,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(
          ConstantsColors.kPrimaryColors,
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      color: color ?? Colors.white,
    ),
  );
}
