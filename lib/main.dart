import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/model/note_model.dart';
import 'package:notes/views/constants.dart';
import 'package:notes/views/notes_view.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(Constants.kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Roboto"),
      home: NotesView(),
    );
  }
}
