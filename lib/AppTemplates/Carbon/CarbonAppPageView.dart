import 'package:flutter/material.dart';

class LoanPageView extends StatefulWidget {
  const LoanPageView({super.key});

  @override
  State<LoanPageView> createState() => _LoanPageViewState();
}

class _LoanPageViewState extends State<LoanPageView> {
  final List applyLoan = [
    {
      "title": "Provide a bank statement",
      "icon": Icons.abc_sharp,
    },
    {
      "title": "Have a good credit & repayment history",
      "icon": Icons.access_alarm_outlined
    },
    {
      "title": "Update your profile information",
      "icon": Icons.accessibility_outlined
    },
    {
      "title": "Transact more with Carbon",
      "icon": Icons.ad_units_rounded,
    }
  ];
  final List acceptOffer = [
    {
      "title":
          "Choose a loan offer and the repayment period to see your payment plan",
    },
    {
      "title":
          "You can set up to \$30k on your first loan  and up to \$1M on subsequent loans",
    },
    {
      "title": "Loan offers are based on your repayment and credit profile",
    },
  ];
  final List repayLoan = [
    {
      "title":
          "Ass your other bank card to get your funds in your carbon account"
    },
    {
      "title":
          "Ensure your loan repayments are made on time. Fees apply for late repayment"
    },
    {
      "title": "Enjoy your Carbon loan! ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.horizontal,
      children: [
        Column(children: [
          Container(
            height: 440,
            width: 400,
            color: const Color.fromARGB(133, 217, 200, 248),
            // child: Image.file("asse"),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(child: const Text("Scroll Animation")),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: 115,
            height: 23,
            decoration: BoxDecoration(
                color: const Color.fromARGB(174, 255, 220, 231),
                borderRadius: BorderRadius.circular(50)),
            child: const Text(
              "Welcome guide",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.pink,
              ),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          const Text(
            "Apply for a Loan",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
          Expanded(
            child: ListView.builder(
                // shrinkWrap: true,
                itemCount: applyLoan.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                        radius: 12,
                        backgroundColor:
                            Color.fromARGB(161, 104, 58, 183),
                        child: Icon(
                          Icons.check,
                          color: Color.fromARGB(234, 58, 3, 155),
                          size: 18,
                        )),
                    title: Text(applyLoan[index]["title"]),
                    // trailing: Icon(applyLoan[index]["icon"]),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 73, 22, 161),
                  foregroundColor: Colors.white,
                  elevation: 5,
                  padding: const EdgeInsets.all(12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Next"),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.arrow_right_alt_outlined)
                ],
              ),
            ),
          ),
        ]),
        Column(children: [
          Container(
            height: 440,
            width: 400,
            color: const Color.fromARGB(133, 217, 200, 248),
            // child: Image.file("asse"),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(child: const Text("Scroll Animation")),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: 115,
            height: 23,
            decoration: BoxDecoration(
                color: const Color.fromARGB(174, 255, 220, 231),
                borderRadius: BorderRadius.circular(50)),
            child: const Text(
              "Welcome guide",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.pink,
              ),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          const Text(
            "Accept Offer",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
          Expanded(
            child: ListView.builder(
                // shrinkWrap: true,
                itemCount: acceptOffer.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                        radius: 12,
                        backgroundColor:
                            Color.fromARGB(161, 104, 58, 183),
                        child: Icon(
                          Icons.check,
                          color: Color.fromARGB(234, 58, 3, 155),
                          size: 18,
                        )),
                    title: Text(acceptOffer[index]["title"]),
                  );
                }),
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(235, 225, 198, 255),
                        foregroundColor: const Color.fromARGB(255, 90, 3, 213),
                        elevation: 5,
                        fixedSize: const Size(100, 50), // Set the width and height

                        padding: const EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back_sharp),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Back"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 73, 22, 161),
                        foregroundColor: Colors.white,
                        elevation: 5,
                        fixedSize: const Size(260, 50), // Set the width and height

                        padding: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Next"),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_right_alt_outlined)
                      ],
                    ),
                  ),
                ],
              )),
        ]),
        Column(children: [
          Container(
            height: 440,
            width: 400,
            color: const Color.fromARGB(133, 217, 200, 248),
            // child: Image.file("asse"),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(child: const Text("Scroll Animation")),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: 115,
            height: 23,
            decoration: BoxDecoration(
                color: const Color.fromARGB(174, 255, 220, 231),
                borderRadius: BorderRadius.circular(50)),
            child: const Text(
              "Welcome guide",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.pink,
              ),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          const Text(
            "Repay your loan",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
          Expanded(
            child: ListView.builder(
                // shrinkWrap: true,
                itemCount: repayLoan.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                        radius: 12,
                        backgroundColor:
                            Color.fromARGB(161, 104, 58, 183),
                        child: Icon(
                          Icons.check,
                          color: Color.fromARGB(234, 58, 3, 155),
                          size: 18,
                        )),
                    title: Text(repayLoan[index]["title"]),
                  );
                }),
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(235, 225, 198, 255),
                        foregroundColor: const Color.fromARGB(255, 90, 3, 213),
                        elevation: 5,
                        fixedSize: const Size(100, 50), // Set the width and height

                        padding: const EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back_sharp),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Back"),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 73, 22, 161),
                        foregroundColor: Colors.white,
                        elevation: 5,
                        fixedSize: const Size(260, 50), // Set the width and height

                        padding: const EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Finish"),
                      ],
                    ),
                  ),
                ],
              )),
        ]),
      ],
    ));
  }
}
