// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:note_app/constant/colors_app.dart';
import 'package:note_app/views/screens/notes_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const NotesScreen()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                "assets/images/splashPhoto.webp",
                width: MediaQuery.of(context).size.width * .65,
              ),
            ),
            const Text(
              "Gratify",
              style: TextStyle(
                color: ColorsApp.textColor,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            const Text(
              "Gratitude Journal",
              style: TextStyle(
                color: ColorsApp.textColor,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
