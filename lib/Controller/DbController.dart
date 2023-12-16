import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:note_with_api/Models/NoteModel.dart';
import 'package:http/http.dart' as http;

class DbController extends GetxController {
  String url = "https://657d4932853beeefdb9a7f7f.mockapi.io/note";

  RxList<NoteModel> notesList = RxList<NoteModel>();
  TextEditingController title = TextEditingController();
  TextEditingController des = TextEditingController();
  TextEditingController titleDetails = TextEditingController();
  TextEditingController desDetails = TextEditingController();
  void onInit() async {
    super.onInit();
    getNotes();
  }

  Future<void> getNotes() async {

    var response = await http.get(
      Uri.parse(url),
    );
    var notes = jsonDecode(response.body);
    notesList.clear();
    for (var note in notes) {
      notesList.add(NoteModel.fromJson(note));
    }
    print("😍 Note Get");
  }

  Future<void> addNote() async {
    var newNote = NoteModel(
      title: title.text,
      description: des.text,
      date: DateTime.now().toString(),
      time: "",
    );

    if(title.text != "" || des.text !="")
    {
      var response = await http.post(
      Uri.parse(url),
      body: jsonEncode(newNote.toJson()),
     headers: {'content-type':'application/json'}
    );
    if(response.statusCode ==201)
    {
      title.clear();
      des.clear();
      print("❤️ Note Added");
      getNotes();
    }
    }
    else{
      print("❌ Please enter something");
    }
  }
}
