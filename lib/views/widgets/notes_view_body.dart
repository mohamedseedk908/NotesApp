import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
          children: [
            SizedBox(height: 50 ,),
            CustomAppBar(),
          ],
      ),
    );
  }
}



class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          ListTile(
            title:Text("Flutter Developer") ,
            subtitle: Text("i Am Muhammad Sadiq Abdulhadi  A Flutter developer && backEnd Developer "),
            trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
          )
        ],
      ),
    );
  }
}

