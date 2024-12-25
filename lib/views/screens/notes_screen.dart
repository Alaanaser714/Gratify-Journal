// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:note_app/constant/colors_app.dart';

import 'package:note_app/views/components/custom_listview_notes.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Gratitude Journal",
            style: TextStyle(
              fontSize: 30,
              color: ColorsApp.textColor,
            ),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.25),
                borderRadius: BorderRadius.circular(8),
              ),
            )
          ],
        ),
        body: CustomListviewNotes());
  }
}
