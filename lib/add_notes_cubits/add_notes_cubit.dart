import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes/model/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNotes(NoteModel notes)
  {

  }
}
