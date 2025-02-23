import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/model/note_model.dart';
import 'package:notes/notes_cubit/notes_cubit.dart';
import 'package:notes/views/widgets/create_custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {

        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: NotesItem(),
              );
            },
          ),
        );
      },
    );
  }
}
