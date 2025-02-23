import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/model/note_model.dart';
import 'package:notes/simple_bloc_observer.dart';
import 'package:notes/views/constants.dart';
import 'package:notes/views/notes_view.dart';
import 'add_notes_cubits/add_notes_cubit.dart';

void main() async{
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  await Hive.openBox(Constants.kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNotesCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Roboto"),
        home: NotesView(),
      ),
    );
  }
}
