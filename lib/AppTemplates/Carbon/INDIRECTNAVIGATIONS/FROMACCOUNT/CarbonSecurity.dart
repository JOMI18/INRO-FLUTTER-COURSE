import 'package:classapp/AppTemplates/Carbon/CUSTOMIZED/AppBars.dart';
import 'package:flutter/material.dart';

class CarbonSecurity extends StatelessWidget {
  const CarbonSecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CarbonAppBars(title: "Security"),
    );
  }
}
