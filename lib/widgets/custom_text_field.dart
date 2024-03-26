import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      this.hintText,
      this.icon,
      this.onChanged,
      this.obscureText = false});
  String? hintText;
  IconData? icon; // New parameter for the icon
  Function(String)? onChanged;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3, // Set elevation for the 3D effect
      borderRadius: BorderRadius.circular(10.0), // Set border radius
      child: TextField(
        obscureText: obscureText!,
        onChanged: onChanged,
        style: const TextStyle(color: Colors.black), // Set text color
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.all(16.0), // Add padding inside the TextField
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none, // Remove border
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none, // Remove border
          ),
          prefixIcon: icon != null // Check if an icon is provided
              ? Icon(
                  icon,
                  color: const Color.fromRGBO(121, 57, 255, 1),
                )
              : null, // Set prefixIcon to null if no icon is provided
        ),
      ),
    );
  }
}
