import 'package:classapp/AppTemplates/Carbon/CUSTOMIZED/AppBars.dart';
import 'package:flutter/material.dart';

class CarbonNotification extends StatelessWidget {
  const CarbonNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CarbonAppBars(title: "Notification"),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.notification_add_sharp, size: 70, color: Colors.amber),
            SizedBox(
              height: 20,
            ),
            Text("OOPS! There is no notification available, check back later!",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
