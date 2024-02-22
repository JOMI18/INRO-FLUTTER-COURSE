import 'package:flutter/material.dart';

class CarbonNotification extends StatelessWidget {
  const CarbonNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(-18),
            child: Container(
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Color.fromARGB(146, 167, 167, 167)))),
            )),
        leading: TextButton(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 25,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Notification",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
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
