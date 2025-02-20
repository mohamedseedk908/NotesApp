import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("NotesApp",style: TextStyle(fontSize: 28),),
        CustomSearchIcon(),
      ],
    );
  }
}

