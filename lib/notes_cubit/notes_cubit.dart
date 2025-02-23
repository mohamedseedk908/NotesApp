import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/model/note_model.dart';

import '../views/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());




  List<NoteModel>? notes ;
  fetchAllNotes() async {
      var notesBox = Hive.box<NoteModel>(Constants.kNotesBox);
      notes = notesBox.values.toList();

    }
  }

