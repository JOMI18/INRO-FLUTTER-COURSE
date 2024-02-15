import 'package:flutter/material.dart';

class CarbonAppWidget extends StatelessWidget {
  CarbonAppWidget({super.key, title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
          top: BorderSide(
              width: 1,
              color: const Color.fromARGB(255, 95, 95, 95).withOpacity(0.8)),
        )),
        child: BottomAppBar(
            color: Colors.white.withOpacity(1),
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      fixedSize: const Size(60, 60),
                      // elevation: 0,
                      shape: const RoundedRectangleBorder()),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        size: 25,
                        color: Color(0xFF0578D6),
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF0578D6),
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      fixedSize: const Size(60, 60),
                      // elevation: 0,
                      shape: const RoundedRectangleBorder()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.cases_outlined,
                        size: 25,
                        color: Colors.grey.shade700,
                      ),
                      Text(
                        "Savings",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      fixedSize: const Size(60, 60),
                      // elevation: 0,
                      shape: const RoundedRectangleBorder()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.savings_outlined,
                        size: 25,
                        color: Colors.grey.shade700,
                      ),
                      Text(
                        "Payment",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'loan');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      fixedSize: const Size(60, 60),
                      // elevation: 0,
                      shape: const RoundedRectangleBorder()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.monetization_on,
                        size: 25,
                        color: Colors.grey.shade700,
                      ),
                      Text(
                        "Loans",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      fixedSize: const Size(60, 60),
                      // elevation: 0,
                      shape: const RoundedRectangleBorder()),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 25,
                        color: Colors.grey.shade700,
                      ),
                      Text(
                        "Account",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                    backgroundColor: const Color(0xFFE7E7E7),
                    radius: 22,
                    child: Icon(
                      Icons.account_circle,
                      size: 41,
                      color: const Color(0xFF252525).withOpacity(0.5),
                    )),

                // Container(
                //   height: 40,
                //   width: 40,
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       // border: Border.all(width: 1),
                //       borderRadius: BorderRadius.circular(50),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Colors.grey.withOpacity(0.5),
                //           spreadRadius: 2,
                //           blurRadius: 7,
                //           // offset: Offset(0, 3)
                //         )
                //       ]),
                //   child: const Icon(
                //     Icons.account_circle,
                //     size: 41,
                //     color: Color.fromARGB(245, 73, 73, 73),
                //   ),
                // ),

                const SizedBox(
                  width: 4,
                ),

                const Text(
                  "Hi Oluwajomiloju",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 13,
                  backgroundColor: const Color(0xFF5C5C5C).withOpacity(0.5),
                  child: const Icon(
                    Icons.question_mark_outlined,
                    size: 18,
                    color: Color.fromARGB(245, 73, 73, 73),
                  ),
                ),

                // Container(
                //   height: 28,
                //   width: 28,
                //   decoration: BoxDecoration(
                //     color: const Color.fromARGB(255, 133, 132, 132),
                //     // border: Border.all(width: 1),
                //     borderRadius: BorderRadius.circular(50),
                //   ),
                //   child: const Icon(
                //     Icons.question_mark_outlined,
                //     size: 22,
                //     color: Color.fromARGB(245, 73, 73, 73),
                //   ),
                // ),

                const SizedBox(width: 10),

                Icon(
                  Icons.notifications,
                  size: 26,
                  color: const Color(0xFF5C5C5C).withOpacity(0.9),
                )
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              // // // // // // // // //   STACK TEST RUN // // // // // // // // //
              // Stack(
              //   children: [
              //     Positioned(
              //       child: Container(
              //         width: 200,
              //         height: 200,
              //         color: Colors.blueAccent,
              //       ),
              //     ),
              //     Positioned(
              //         top: 50,
              //         left: 50,
              //         child: Container(
              //           width: 100,
              //           height: 100,
              //           color: Colors.redAccent,
              //         )),
              //     Positioned(
              //         top: -10,
              //         left: 50,
              //         child: Container(
              //           width: 40,
              //           height: 40,
              //           color: Colors.greenAccent,
              //         )),
              //   ],
              // ),
              Column(
                children: [
                  Account(),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.grey.withOpacity(0.3), // Shadow color
                              spreadRadius: 0.5, // Spread radius
                              blurRadius: 2, // Blur radius
                              offset: const Offset(0, 1), // Offset
                            ),
                          ],
                        ),
                        child: const Card(
                          elevation: 2,
                          surfaceTintColor: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(
                              10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.upgrade,
                                      size: 28,
                                      color: Color.fromARGB(183, 0, 70, 156),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Upgrade your Cabon Account",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700)),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                            "Verify your identity to improve limits on your account",
                                            style: TextStyle(
                                              fontSize: 12,
                                            )),
                                        Text(
                                          "Tap here to upgrade now",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 15,
                                            letterSpacing: -0.6,
                                            fontWeight: FontWeight.w800,
                                            color:
                                                Color.fromARGB(183, 0, 73, 142),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Access(),
                  const SizedBox(
                    height: 50,
                  ),
                  Transactions()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
              height: 140,
              width: 550,
              decoration: BoxDecoration(
                // boxShadow: Box,
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xFF0578D6),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Main Account Balance",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                            color: const Color(0xFF028306),
                            borderRadius: BorderRadius.circular(3)),
                        child: const Text(
                          "Active",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    children: [
                      Text(
                        "\$ 0.00",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.remove_red_eye_outlined,
                        size: 28,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Account number: 4004383940385",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.copy,
                        size: 20,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 65,
              child: Container(
                height: 48,
                width: 260,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 202, 231, 255),
                    borderRadius: BorderRadius.circular(6)),
                //   borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(6),
                //   topRight: Radius.circular(6),
                // ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        backgroundColor:
                            const Color.fromARGB(255, 165, 215, 255)
                                .withOpacity(1),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "addMoney");
                      },
                      child: const Text(
                        "Add money",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 37, 68),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        backgroundColor:
                            const Color.fromARGB(255, 165, 215, 255)
                                .withOpacity(1),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'loan');
                      },
                      child: const Text(
                        "Send Money",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 37, 68),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class Access extends StatelessWidget {
  const Access({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Quick Access",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {},
              // width: 80,
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 85),
                  shape: const RoundedRectangleBorder(),
                  padding: const EdgeInsets.all(0),
                  foregroundColor: Colors.grey.shade800),

              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Color.fromARGB(255, 232, 186, 17),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Carbon Zero",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'airtime');
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 85),
                  shape: const RoundedRectangleBorder(),
                  padding: const EdgeInsets.all(0),
                  foregroundColor: Colors.grey.shade800),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone_android_rounded,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Buy Airtime",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              // width: 80,
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 85),
                  shape: const RoundedRectangleBorder(),
                  padding: const EdgeInsets.all(0),
                  foregroundColor: Colors.grey.shade800),

              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.tv,
                    color: Color.fromARGB(255, 2, 119, 63),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Pay Bills",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            ElevatedButton(
              onPressed: () {},
              // width: 80,
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(80, 85),
                  shape: const RoundedRectangleBorder(),
                  padding: const EdgeInsets.all(0),
                  foregroundColor: Colors.grey.shade800),

              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.credit_card,
                    color: Colors.pink,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Cards",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class Transactions extends StatelessWidget {
  Transactions({super.key});

  final List transactions = [
    {
      "icon": Icons.shopping_cart,
      "price": 100,
      "title": 'Shopping',
      "date": DateTime.now(),
    },
    {
      "icon": Icons.restaurant,
      "price": 50,
      "title": 'Dinner',
      "date": DateTime.now().subtract(const Duration(days: 1)),
    },
    {
      "icon": Icons.local_grocery_store,
      "price": 200,
      "title": 'Groceries',
      "date": DateTime.now().subtract(const Duration(days: 2)),
    },
    {
      "icon": Icons.tv,
      "price": 250,
      "title": 'Hulu',
      "date": DateTime.now().subtract(const Duration(days: 3)),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Transactions",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          Text(
            "View All",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: const Color(0xFF0578D6)),
          )
        ],
      ),
      SizedBox(
        height: 400,
        child: ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  tileColor: const Color.fromARGB(127, 223, 253, 255),
                  leading: CircleAvatar(
                    radius: 18,
                    child: Icon(
                      transactions[index]['icon'],
                      size: 17,
                    ),
                  ),
                  trailing: Text(
                    "\$${transactions[index]['price'].toString()}",
                    style: const TextStyle(
                        fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                  title: Text(transactions[index]['title'],
                      style: const TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 16)),
                  subtitle: Text(transactions[index]['date'].toString()),
                ),
                const SizedBox(
                  height: 4,
                )
              ],
            );
          },
        ),
      )
    ]);
  }
}
