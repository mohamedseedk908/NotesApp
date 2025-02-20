import 'package:flutter/material.dart';
import 'package:notes/views/widgets/create_custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final data = const [

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder:(context,index){
          return const Padding(
            padding:  EdgeInsets.only(bottom: 4),
            child: NotesItem(),
          );
        } ,
      ),
    );
  }
}