import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_with_api/Pages/NewNotePage.dart';

class NoteWidgets extends StatelessWidget {
  const NoteWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(NewNotePage());
      },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.shade300,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "This is a note where i can write anything",
                              maxLines: 1,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Flexible(
                                child: Text(
                                    "This is a note where i can write anything This is a note where i can write anything This is a note where i can write anything This is a note where i can write anything This is a note where i can write anything This is a note where i can write anything",maxLines: 8,),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
  }
}