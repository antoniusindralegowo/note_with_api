import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_with_api/Controller/DbController.dart';
import 'package:note_with_api/Models/NoteModel.dart';

class NotesDetails extends StatelessWidget {
  final NoteModel note;
  const NotesDetails({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    DbController dbController = Get.put(DbController());
    dbController.titleDetails.text = note.title.toString();
    dbController.desDetails.text = note.description.toString();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'N E W - N O T E',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.deepPurple.shade100,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          TextFormField(
            controller: dbController.titleDetails,
            decoration: InputDecoration(
              hintText: "Title",
              border: InputBorder.none,
              hintStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextFormField(
            controller: dbController.desDetails,
            maxLines: 20,
            decoration: InputDecoration(
              hintText: "Description",
              border: InputBorder.none,
              hintStyle: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("S A V E"),
          )
        ]),
      ),
    );
  }
}
