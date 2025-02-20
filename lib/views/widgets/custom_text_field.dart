import 'package:flutter/material.dart';
import 'package:notes/views/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor:ConstantsColors.kPrimaryColors,
       decoration: InputDecoration(
         hintText: "Title",
         hintStyle: TextStyle(color: ConstantsColors.kPrimaryColors,),
         border: buildBorder(),
         enabledBorder: buildBorder(),
         focusedBorder: buildBorder(ConstantsColors.kPrimaryColors,),
       ),
    );
  }
}

OutlineInputBorder buildBorder([color]){
  return  OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
        color: color ?? Colors.white,
    ),
  );
}