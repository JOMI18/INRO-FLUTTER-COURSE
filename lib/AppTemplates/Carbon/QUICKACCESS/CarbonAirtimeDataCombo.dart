import 'package:flutter/material.dart';

class AirtimeDataCombo extends StatelessWidget {
  AirtimeDataCombo({super.key});
  final List<String> tabTitles = ["Buy Airtime", "Buy Data"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: tabTitles.length,
        child: Scaffold(
          appBar: AppBar(
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(-18),
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1,
                              color: Color.fromARGB(229, 167, 167, 167)))),
                )),
            leading: TextButton(
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 16,
              ),
            ),
            centerTitle: true,
            title: Text(
              tabTitles[0],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                children: [
                  TabBar(
                      // indicator: BoxDecoration(color: Colors.blue),
                      tabs: [
                        Tab(
                          text: "Buy Airtime",
                        ),
                        Tab(
                          text: "Buy Data",
                        ),
                      ])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
