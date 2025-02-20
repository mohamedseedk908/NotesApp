import 'package:flutter/material.dart';
import 'package:notes/views/edit_notes_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNotesView();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16,
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "Flutter Developer",
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
              ),
              subtitle: Text(
                "i Am Muhammad Sadiq Abdulhadi A Flutter developer && backEnd Developer ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                "May21, 2025",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
