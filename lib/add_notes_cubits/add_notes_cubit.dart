import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/model/note_model.dart';
import 'package:notes/views/constants.dart';
part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNotes(NoteModel notes) async{
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(Constants.kNotesBox);
      emit(AddNotesSuccess());
      await notesBox.add(notes);
    } on Exception catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
