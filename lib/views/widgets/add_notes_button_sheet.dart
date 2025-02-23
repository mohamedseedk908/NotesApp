import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/add_notes_cubits/add_notes_cubit.dart';
import 'package:notes/views/widgets/add_note_form.dart';

class AddNotesButtonSheet extends StatelessWidget {
  const AddNotesButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {
            print("${state.toString()}");
          }
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: AbsorbPointer(
              absorbing: state is AddNotesLoading ? true : false,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: AddNotesForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
