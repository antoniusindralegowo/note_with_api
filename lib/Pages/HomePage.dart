import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_with_api/Controller/DbController.dart';
import 'package:note_with_api/Pages/NewNotePage.dart';
import 'package:note_with_api/Pages/NotesWidgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    DbController dbController = Get.put(DbController());
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
              dbController.getNotes();
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
          child: Obx(() => GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: dbController.notesList
                .map(
                  (e) => NoteWidgets(
                    note: e,
                  ),
                )
                .toList(),
          ),),),
    );
  }
}
