import 'package:classapp/AppTemplates/Carbon/CUSTOMIZED/AppBars.dart';
import 'package:flutter/material.dart';

class CarbonProfile extends StatelessWidget {
  CarbonProfile({super.key});
  final List items = [
    {
      "mainIcon": Icons.arrow_upward_rounded,
      "mainTitle": "Upgrade your account",
      "route": "",
    },
    {
      "mainIcon": Icons.account_circle,
      "mainTitle": "Profile",
      "route": "profileInfo",
    },
    {
      "mainIcon": Icons.edit_document,
      "mainTitle": "Request Statement",
      "route": "",
    },
    {
      "mainIcon": Icons.email,
      "mainTitle": "Support",
      "route": "support",
    },
    {
      "mainIcon": Icons.credit_card,
      "mainTitle": "Cards and bank",
      "route": "",
    },
    {
      "mainIcon": Icons.lock,
      "mainTitle": "Security settings",
      "route": "security",
    },
    {
      "mainIcon": Icons.note_alt,
      "mainTitle": "Credit report",
      "route": "",
    },
    {
      "mainIcon": Icons.format_line_spacing_rounded,
      "mainTitle": "Preferences",
      "route": "",
    },
    {
      "mainIcon": Icons.double_arrow_outlined,
      "mainTitle": "Account limits",
      "route": "",
    },
    {
      "mainIcon": Icons.account_balance,
      "mainTitle": "About {App}",
      "route": "",
    },
    {
      "mainIcon": Icons.block_sharp,
      "mainTitle": "Sign out",
      "route": "signOut",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CarbonAppBars(title: "Account"),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Container(
              width: 400,
              padding: const EdgeInsets.all(12),
              color: const Color.fromARGB(255, 191, 233, 255),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.spa_rounded,
                      size: 41,
                      color: const Color.fromARGB(255, 11, 104, 181),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Jonathan Smith Reyes",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1.1),
                      ),
                      // const SizedBox(height: 5),
                      const Text("Client ID:2345678567",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 44, 44, 44))),
                      Text("Joined Feb 05, 2023",
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade800))
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(6),
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(0xD5000000),
                        // border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        "LEVEL 1",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 45, 199, 255),
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: 
              ListView.builder(
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
                              Navigator.pushNamed(
                                  context, items[index]["route"]);
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
                          height: 6,
                        )
                      ],
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
