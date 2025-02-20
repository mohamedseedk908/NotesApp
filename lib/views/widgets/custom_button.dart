import 'package:flutter/material.dart';
import 'package:notes/views/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
          color: ConstantsColors.kPrimaryColors,
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Text(
          "Save",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
