import 'package:classapp/AppTemplates/Carbon/CUSTOMIZED/AppBars.dart';
import 'package:flutter/material.dart';

class CarbonSavings extends StatelessWidget {
  const CarbonSavings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CarbonAppBars(
        title: "Savings",
        trailing: Padding(
          padding: EdgeInsets.all(6),
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Color.fromARGB(255, 46, 46, 46).withOpacity(0.5),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "support");
              },
              child: const Icon(
                Icons.question_mark_outlined,
                size: 18,
                color: Color.fromARGB(255, 24, 24, 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
