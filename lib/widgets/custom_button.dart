import 'package:flutter/material.dart';
import 'package:note_app/constant/colors_app.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onTap,
    this.isLoading = false,
  });

  final String title;
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ColorsApp.buttonColor,
        ),
        child: isLoading
            ? const Center(
                child: SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(),
              ))
            : Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: ColorsApp.textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ),
    );
  }
}
