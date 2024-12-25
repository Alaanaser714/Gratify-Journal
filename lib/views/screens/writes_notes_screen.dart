// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../components/custom_model_bottom_sheet.dart';

class WritesNotesScreen extends StatelessWidget {
  const WritesNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          showModalBottomSheet(
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
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
      appBar: AppBar(
        title: const Text('Gratitude Journal'),
      ),
    );
  }
}
