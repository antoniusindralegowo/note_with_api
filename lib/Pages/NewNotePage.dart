import 'package:flutter/material.dart';

class NewNotePage extends StatelessWidget {
  const NewNotePage({super.key});

  @override
  Widget build(BuildContext context) {
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
