import 'package:classapp/AppTemplates/Carbon/CUSTOMIZED/AppBars.dart';
import 'package:flutter/material.dart';

class CarbonBillTabs extends StatelessWidget {
  const CarbonBillTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CarbonAppBars(title: "Bill Tabs"),
    );
  }
}
