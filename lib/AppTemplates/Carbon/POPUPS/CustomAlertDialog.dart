import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.content,
    required this.actions,
    this.icon,
    this.iconColor,
    this.containerDecoration,
    // this.showDialog,
  });
  final String title;
  final Decoration? containerDecoration;
  final Widget content;
  final IconData? icon;
  final Color? iconColor;
  final List<Widget> actions;
  // final bool? showDialog;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 231, 249, 255),
      surfaceTintColor: Colors.white,
      // insetPadding: const EdgeInsets.all(20),
      title: Column(
        children: [
          Icon(
            icon,
            size: 80,
            color: iconColor,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: -0.6,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
      content: content,
      actions: actions,
    );
  }
}
