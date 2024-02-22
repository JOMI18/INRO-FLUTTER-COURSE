import 'package:flutter/material.dart';

class PureMathAppWidget extends StatelessWidget {
  // String title = '';

  const PureMathAppWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 27, 27),
        appBar: AppBar(
            automaticallyImplyLeading: false,
            titleSpacing: 0.0, // removes extra space from the left and right

// // // // // CLASS Intro  // // // // // // //
            // title: Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [Icon(Icons.home), Text('Home page')],
            // ),
            // backgroundColor: Colors.amberAccent,
            // centerTitle: true,
            // titleSpacing: 10.2,

//////////////// class CHALLENGE  ////////////////

//////////////////////// Explain how this bottom works //////////////////////////
// In Flutter, the bottom property of the AppBar widget allows you to specify a widget that is positioned below
// the title and actions of the app bar. This property is typically used to add additional UI elements, such as
//tabs or buttons, below the app bar's primary content.
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(6),
              child: Container(
                height: 2.0,
                color: const Color.fromARGB(255, 101, 100, 100),
              ),
            ),
            backgroundColor: const Color.fromARGB(217, 44, 43, 43),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(width: 1, color: Colors.white)),
                      child: const Column(
                        children: [
                          SizedBox(
                            height: 10.0,
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 8,
                                    ),
                                    Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 8,
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 8,
                                    ),
                                    Icon(
                                      Icons.align_vertical_center_sharp,
                                      color: Colors.white,
                                      size: 8,
                                    )
                                  ],
                                )
                              ]),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      "Pure Math",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 30.0,
                    )
                  ],
                )
              ],
            )
//            Container(
// ////////////////////////// increasing height for more space //////////////////////////////
//             // height: 70,
//             decoration: BoxDecoration(
//                 border: Border.all(
//               width: 2,
//               color: Colors.red,
//             )),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(
//                       Icons.menu_outlined,
//                       size: 22,
//                       semanticLabel: "Menu Bar",
//                       color: Colors.white,
//                     ),
//                     Icon(
//                       Icons.mail_outline,
//                       size: 22,
//                       color: Colors.white,
//                       semanticLabel: "Mail Notifications",
//                     ),
//                   ],
//                 ),
//                 Column(
//                   // crossAxisAlignment: CrossAxisAlignment.end,
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Column(children: [
//                       Container(
//                           height: 30,
//                           width: 30,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(50),
//                               border: Border.all(
//                                 width: 1.0,
//                                 color: Colors.white,
//                               )),
//                           child: const Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Icon(
//                                       Icons.add,
//                                       color: Colors.white,
//                                       size: 10,
//                                     ),
//                                     Icon(
//                                       Icons.remove,
//                                       color: Colors.white,
//                                       size: 10,
//                                     )
//                                   ],
//                                 ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Icon(
//                                       Icons.close,
//                                       color: Colors.white,
//                                       size: 10,
//                                     ),
//                                     Icon(
//                                       Icons.align_vertical_center_sharp,
//                                       color: Colors.white,
//                                       size: 10,
//                                     )
//                                   ],
//                                 )
//                               ]
//                               )),
//                       const Text(
//                         "Pure Math",
//                         style: TextStyle(color: Colors.white, fontSize: 12),
//                       ),
//                     ]),
//                   ],
//                 )
//               ],
//             ),
//           ),
            ),
        body: Center(
//  //  //   //  //  //  //  //  // CLASS    //  //  //  //  //  //  //  //  //  //
          //  child: Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //   Column(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Text(
          //         'This is the body',
          //         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          //       ),
          //       Text('This is the body'),
          //       SizedBox(
          //         height: 20,
          //       ),  // SizedBox is for whitespace
          //       Text('This is the body'),
          //       Text('This is the body'),
          //       Icon(Icons.account_circle)
          //     ],
          //   ),
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     crossAxisAlignment: CrossAxisAlignment.end,
          //     children: [
          //       Text("Row alignment"),
          //       Text("Row alignment"),
          //       Text("Row alignment"),
          //     ],
          //   )
          // ],
          // ),
          // CHALLENGE
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    // padding: const EdgeInsets.all(16.0), // wrap with padding widget instead
                    width: 320,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(120, 83, 83, 83),
                      border: Border.all(
                        color: const Color.fromARGB(255, 153, 153, 153),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      // padding: const EdgeInsets.symmetric(
                      //     horizontal: 40, vertical: 40),
                      // padding: const EdgeInsets.fromLTRB(
                      //    Left, top ,right, bottom),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          const Text("Math Arcade",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              )),
                          // const Text(
                          //     "Complete levels with increasing difficulty ",
                          //     style: TextStyle(
                          //       color: Colors.white,
                          //     )),
                          // const Text("and score points. Play & train. ",
                          //     style: TextStyle(
                          //       color: Colors.white,
                          //     )),
                          ////////////////////////////////////////// how to align without breaking text like this --SOLN OVERFLOW w text align //////////////////////////////
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                                "Complete levels with increasing difficulty, and score points. Play & train.",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.fade,
                                softWrap: true,
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ),
                          RichText(
                              // used like a tag for link
                              text: const TextSpan(children: [])),
                          const SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    /////////////////////// Explaining How Decoration, Padding, Margin and Border Radius Works//////////////////////////////////////
                                    /////////////////////// How to Add Images and Fonts //////////////////////////////////////
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          width: 1.0,
                                          color: Colors.white,
                                        )),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const Text(
                                    "1/200",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          width: 1.0,
                                          color: Colors.white,
                                        )),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const Text(
                                    "1/200",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          width: 1.0,
                                          color: Colors.white,
                                        )),
                                    child: const Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.close,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Icon(
                                          Icons.lock_outline_sharp,
                                          size: 9,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const Text(
                                    "1/200",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          width: 1.0,
                                          color: Colors.white,
                                        )),
                                    child: const Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.align_vertical_center_sharp,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                        Icon(
                                          Icons.lock_outline_sharp,
                                          size: 9,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          height: 6,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const Text(
                                    "1/200",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          width: 1.0,
                                          color: Colors.white,
                                        )),
                                    child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 13,
                                              ),
                                              Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                                size: 13,
                                              )
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Icon(
                                                    Icons.close,
                                                    color: Colors.white,
                                                    size: 13,
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .align_vertical_center_sharp,
                                                    color: Colors.white,
                                                    size: 13,
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Icon(
                                                Icons.lock_outline_sharp,
                                                size: 9,
                                                color: Colors.white,
                                              ),
                                            ],
                                          )
                                        ]),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const Text(
                                    "1/200",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                Container(
                    padding: const EdgeInsets.all(16.0),
                    width: 320,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(120, 83, 83, 83),
                      border: Border.all(
                        color: const Color.fromARGB(255, 153, 153, 153),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                width: 1.0,
                                color: Colors.white,
                              )),
                          child: const Icon(
                            Icons.alarm,
                            color: Colors.white,
                          ),
                        ),
                        // SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Math Practice",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25)),
                            Text("Custom Practice mode.",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            Text("Practice regularly and",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            Text("Improve your math skills.",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            SizedBox(height: 8.0),
                          ],
                        ),
                        // SizedBox(width: 12),
                        const Icon(Icons.arrow_forward_ios,
                            color: Colors.white, size: 16),
                      ],
                    )),
                Container(
                    padding: const EdgeInsets.all(16.0),
                    width: 320,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(120, 83, 83, 83),
                      border: Border.all(
                        color: const Color.fromARGB(255, 153, 153, 153),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                width: 1.0,
                                color: Colors.white,
                              )),
                          child: const Icon(
                            Icons.table_rows_outlined,
                            color: Colors.white,
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Math Tables",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25)),
                            Text("Learn math tables. ",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            Text("Play, repeat a few times  ",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            Text("a day, train your memory",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ],
                        ),
                        const Icon(Icons.arrow_forward_ios,
                            color: Colors.white, size: 16),
                      ],
                    ))
              ]),
        ));
  }
}
