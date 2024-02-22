import 'package:classapp/AppTemplates/Carbon/CUSTOMIZED/AppBars.dart';
import 'package:classapp/AppTemplates/Carbon/POPUPS/CustomAlertDialog.dart';
import 'package:flutter/material.dart';

// Icons.arrow_forward_ios
class CarbonProfileInfo extends StatelessWidget {
  CarbonProfileInfo({super.key});
  final List items = [
    {
      "mainIcon": Icons.format_align_center,
      "mainTitle": "Personal Details",
      "route": ""
    },
    {
      "mainIcon": Icons.account_balance,
      "mainTitle": "Bank Details",
      "route": ""
    },
    {
      "mainIcon": Icons.home_filled,
      "mainTitle": "Residential Details",
      "route": ""
    },
    {"mainIcon": Icons.work, "mainTitle": "Employment Details", "route": ""},
    {"mainIcon": Icons.people, "mainTitle": "Next of Kin", "route": ""},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          // height: 60,
          surfaceTintColor: Colors.white,
          elevation: 2,
          child: ElevatedButton.icon(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomAlertDialog(
                          title: "Close Account",
                          content: SizedBox(
                              width: 250,
                              child: const Text(
                                "You are about to delete your profile. Please note that when you delete your profile your previous transactions records are not deleted",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                          actions: [
                            Column(
                              children: [
                                TextButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color.fromARGB(
                                                  255, 255, 17, 0))),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    "Close Account",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color.fromARGB(
                                                  255, 0, 255, 8))),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return CustomAlertDialog(
                                            title: "Okay, Processing request",
                                            actions: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text("Close"))
                                            ],
                                            content: const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CircularProgressIndicator(),
                                                SizedBox(
                                                  width: 20,
                                                ),
                                                Text(
                                                  "Please Wait...",
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                )
                                              ],
                                            ),
                                          );
                                        });
                                  },
                                  child: const Text(
                                    "Yes",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                          ]);
                    });
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                fixedSize: const Size(50, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                foregroundColor: const Color.fromARGB(255, 213, 3, 3),
              ),
              icon: const Icon(Icons.delete),
              label: const Text("Close Account"))),
      appBar: const CarbonAppBars(
        title: "Profile",
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 200,
            decoration: BoxDecoration(
                color: const Color.fromARGB(228, 211, 231, 255),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const CircleAvatar(
                    radius: 70,
                    backgroundColor: Color.fromARGB(255, 133, 187, 252),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Hi, Jonathan!",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        "Change profile picture",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.camera_enhance,
                          size: 23,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 440,
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          child: Icon(
                            items[index]["mainIcon"],
                            size: 22,
                            color: const Color.fromARGB(255, 11, 104, 181),
                          ),
                        ),
                        trailing: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, items[index]["route"]);
                          },
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Color.fromARGB(255, 133, 133, 133),
                          ),
                        ),
                        title: Text(items[index]["mainTitle"],
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16)),
                      ),
                      const Divider(
                        height: 20,
                      )
                    ],
                  );
                })),
          ),
          Container(
            height: 80,
            width: 380,
            decoration: BoxDecoration(
                color: const Color.fromARGB(228, 211, 231, 255),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.admin_panel_settings_rounded,
                  color: Color.fromARGB(255, 0, 115, 255),
                  size: 34,
                ),
                SizedBox(
                  width: 330,
                  child: Text(
                    "We don't share your personal details with anyone. This information is required soley for verification.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 115, 255),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
