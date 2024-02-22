import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.content,
    required this.actions,
  });
  final String title;
  final Widget content;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.all(20),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: -0.6, fontSize: 20),
      ),
      content: content,
      actions: actions,
    );
  }
}
