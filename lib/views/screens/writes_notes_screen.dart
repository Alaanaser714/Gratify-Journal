// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:note_app/constant/colors_app.dart';
import 'package:note_app/views/screens/notes_screen.dart';
import 'package:note_app/widgets/custom_button.dart';

import '../components/custom_model_bottom_sheet.dart';

class WritesNotesScreen extends StatelessWidget {
  const WritesNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: ColorsApp.buttonColor,
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Colors.grey,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            context: context,
            builder: (context) {
              return CustomModelBottomSheet();
            },
          );
        },
        label: Text(
          'Add Notes',
          style: TextStyle(
            fontSize: 20,
            color: ColorsApp.textColor,
          ),
        ),
        icon: Icon(
          Icons.add,
          color: ColorsApp.textColor,
          size: 25,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Grateful Daily Posts',
          style: TextStyle(
            fontSize: 30,
            color: ColorsApp.textColor,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                "Start your day by writing down what you are grateful for.",
                style: TextStyle(
                  fontSize: 30,
                  color: ColorsApp.textColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                title: "My daily blogs",
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotesScreen(),
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
