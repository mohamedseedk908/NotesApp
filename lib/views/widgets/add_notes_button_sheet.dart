import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class AddNotesButtonSheet extends StatelessWidget {
  const AddNotesButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}
