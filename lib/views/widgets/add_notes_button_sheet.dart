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
            const SizedBox(
              height: 24,
            ),
            const CustomTextField(
              hint: "title",
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
              hint: "content",
              maxLines: 7,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomButton(),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
