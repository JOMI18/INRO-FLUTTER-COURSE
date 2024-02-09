import 'package:flutter/material.dart';

class CarbonAppWidget extends StatelessWidget {
  CarbonAppWidget({super.key, title});
  final List transactions = [
    {
      "icon": Icons.shopping_cart,
      "price": 100.0,
      "title": 'Shopping',
      "date": DateTime.now(),
    },
    {
      "icon": Icons.restaurant,
      "price": 50.0,
      "title": 'Dinner',
      "date": DateTime.now().subtract(Duration(days: 1)),
    },
    {
      "icon": Icons.local_grocery_store,
      "price": 200.0,
      "title": 'Groceries',
      "date": DateTime.now().subtract(Duration(days: 2)),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          // offset: Offset(0, 3)
                        )
                      ]),
                  child: const Icon(
                    Icons.account_circle,
                    size: 41,
                    color: Color.fromARGB(245, 73, 73, 73),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "Hi Oluwajomiloju",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 133, 132, 132),
                    // border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.question_mark_outlined,
                    size: 22,
                    color: Color.fromARGB(245, 73, 73, 73),
                  ),
                ),
                const SizedBox(width: 18),
                const Icon(
                  Icons.notifications,
                  size: 28,
                  color: Color.fromARGB(245, 73, 73, 73),
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
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 8),
                        height: 140,
                        width: 550,
                        decoration: BoxDecoration(
                          // boxShadow: Box,
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color.fromARGB(255, 83, 44, 149),
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
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 2, 131, 6),
                                  ),
                                  child: const Text(
                                    "Active",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
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
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
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
                      Positioned(
                          bottom: -20,
                          left: 70,
                          child: Container(
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(210, 247, 242, 249),
                                borderRadius: BorderRadius.circular(6)),
                            //                  borderRadius: BorderRadius.only(
                            //   topLeft: Radius.circular(6),
                            //   topRight: Radius.circular(6),
                            // ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Add money",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 83, 44, 149),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Send Money",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 83, 44, 149),
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Quick Access",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 84,
                            width: 84,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(218, 242, 241, 248),
                                borderRadius: BorderRadius.circular(5)),
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
                          Container(
                            height: 84,
                            width: 84,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(218, 242, 241, 248),
                                borderRadius: BorderRadius.circular(5)),
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
                          Container(
                            height: 84,
                            width: 84,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(218, 242, 241, 248),
                                borderRadius: BorderRadius.circular(5)),
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
                          Container(
                            height: 84,
                            width: 84,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(218, 242, 241, 248),
                                borderRadius: BorderRadius.circular(5)),
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
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transactions",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color.fromARGB(255, 83, 44, 149)),
                        )
                      ],
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    SizedBox(
                      height: 400,
                      child: ListView.builder(
                        itemCount: transactions.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Icon(
                              transactions[index]['icon'],
                            ),
                            trailing: Text(
                              "\$${transactions[index]['price'].toString()}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 18),
                            ),
                            title: Text(transactions[index]['title'],
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 16)),
                            subtitle: Text(
                                '${transactions[index]['date'].toString()}'),
                          );
                        },
                      ),
                    )
                  ])
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
