import 'package:flutter/material.dart';

class CarbonSupport extends StatelessWidget {
  CarbonSupport({super.key});

  final List items = [
    {
      "mainIcon": Icons.note_alt_sharp,
      "mainTitle": "Check FAQs",
      "subTitle": "Read our extensive help articles",
      "sideIcon": Icons.arrow_forward_ios,
    },
    {
      "mainIcon": Icons.email,
      "mainTitle": "Contact customer support",
      "subTitle": "Seek help from our support team",
      "sideIcon": Icons.arrow_forward_ios,
    },
    {
      "mainIcon": Icons.info,
      "mainTitle": "How to get a loan",
      "subTitle": "Learn how to get a loan in easy steps",
      "sideIcon": Icons.arrow_forward_ios,
    },
  ];

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
          "Support",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
            child: Text("How can we help you today?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 28,
                          child: Icon(
                            items[index]["mainIcon"],
                            size: 28,
                            color: Color.fromARGB(255, 11, 104, 181),
                          ),
                        ),
                        trailing: GestureDetector(
                          onTap: () {
                            if (index == 0) {
                              Navigator.pushNamed(context, '');
                            } else if (index == 1) {
                              Navigator.pushNamed(context, 'challenge');
                            } else if (index == 2) {
                              Navigator.pushNamed(context, 'gettingLoan');
                            }
                          },
                          child: Icon(
                            items[index]["sideIcon"],
                            size: 16,
                            color: const Color.fromARGB(255, 32, 32, 32),
                          ),
                        ),
                        subtitle: Text(items[index]["subTitle"]),
                        title: Text(items[index]["mainTitle"],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                      ),
                      Divider(
                        height: 12,
                      )
                    ],
                  );
                })),
          )
        ],
      ),
    );
  }
}
