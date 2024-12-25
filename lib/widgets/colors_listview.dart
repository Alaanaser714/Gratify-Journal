// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:note_app/widgets/colors_item.dart';

class ColorsListview extends StatefulWidget {
  const ColorsListview({
    super.key,
  });

  @override
  State<ColorsListview> createState() => _ColorsListviewState();
}

class _ColorsListviewState extends State<ColorsListview> {
  List<Color> colorsList = [
    Color(0xffADD8E6),
    Color(0xff98FB98),
    Color(0xffFF69B4),
    Color(0xffF1C40F),
    Color(0xffF5F5DC),
    Color(0xffD2B48C),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40 * 2,
      child: ListView.builder(
        itemCount: colorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
              BlocProvider.of<AddNotesCubits>(context).color =
                  colorsList[index];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ColorsItem(
                isSelected: currentIndex == index,
                color: colorsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
