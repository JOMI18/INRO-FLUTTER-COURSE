import 'package:flutter/material.dart';

class PasswordInputBox extends StatefulWidget {
  const PasswordInputBox({super.key});

  @override
  State<PasswordInputBox> createState() => _PasswordInputBoxState();
}

class _PasswordInputBoxState extends State<PasswordInputBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      child: TextFormField(
        maxLength: 1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10, // Adjust vertical padding as needed
            horizontal: 10, // Adjust horizontal padding as needed
          ),
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          fillColor: Colors.grey.shade200,
          counter: const SizedBox.shrink(), // removes the counter
        ),
      ),
    );
  }
}
