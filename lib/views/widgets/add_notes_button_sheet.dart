import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_button.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class AddNotesButtonSheet extends StatelessWidget {
  const AddNotesButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomTextField(
              hint: "title",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: "content",
              maxLines: 7,
            ),
            SizedBox(
              height: 16,
            ),
            CustomButton(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

