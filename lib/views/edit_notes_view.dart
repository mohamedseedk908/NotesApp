import 'package:flutter/material.dart';
import 'package:notes/views/widgets/edit_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotesViewBody(),
    );
  }
}
