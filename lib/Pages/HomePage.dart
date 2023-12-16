import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_with_api/Pages/NewNotePage.dart';
import 'package:note_with_api/Pages/NotesWidgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'A P I - N O T E',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
             
            },
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          Get.to(const NewNotePage());
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              NoteWidgets(),
              NoteWidgets(),
              NoteWidgets(),
              NoteWidgets(),
              NoteWidgets(),
            ],
          )),
    );
  }
}
