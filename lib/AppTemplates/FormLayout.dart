import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(12),
            child: Container(height: 2.0, color: Colors.black)),
        titleSpacing: 4,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              size: 30,
            ),
            Text("Sign Up Forms"),
            Icon(
              Icons.account_circle_rounded,
              size: 30,
            ),
          ],
        ),
      ),
      body: Card(
          color: const Color.fromARGB(31, 131, 189, 176),
          child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 15, vertical: 10),
              child: Column(children: [
                const Column(
                  children: [
                    Text(
                      "Please fill in this Form to Continue to  ",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    Text("PureMath",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color.fromARGB(255, 35, 58, 77))),
                    SizedBox(
                      height: 6,
                    )
                  ],
                ),
                const Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('First Name:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                            decoration: InputDecoration(
                          // labelText: 'Enter your first name',
                          border: OutlineInputBorder(),
                          hintText: "Enter your first name",
                          // errorStyle: TextStyle(color: Colors.red),
                          // labelStyle: TextStyle(color: Colors.black)
                        )),
                        SizedBox(
                          height: 12,
                        ),
                        //////////////////Other Way to do Input Box  ////////////////////////
                        // TextFormField(
                        //     obscureText: true,
                        //     decoration: InputDecoration(
                        //       labelText: 'Password',
                        //       border: OutlineInputBorder(),
                        //     )),
                        Text('Last Name:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter your last name",
                        )),
                        SizedBox(
                          height: 12,
                        ),
                        Text('Email:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter your Email",
                        )),
                        SizedBox(
                          height: 12,
                        ),
                        Text('Address:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter your Address",
                        )),
                        SizedBox(
                          height: 12,
                        ),
                        Text('Password:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter your Password",
                        )),
                        SizedBox(
                          height: 12,
                        ),
                        Text('Confirm Password:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter your Confirm Password",
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        //////////////// Having the Inputs Side by Side ////////////
                        // Row(
                        //   children: [
                        //     Expanded(
                        //         child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         const Text('First Name:',
                        //             style: TextStyle(
                        //               fontSize: 16,
                        //               fontWeight: FontWeight.bold,
                        //             )),
                        //         TextFormField(
                        //           decoration: const InputDecoration(
                        //             labelText: 'First Name',
                        //             border: OutlineInputBorder(),
                        //           ),
                        //           validator: (value) {
                        //             if (value == null || value.isEmpty) {
                        //               return 'Please enter your first name';
                        //             }
                        //             return null;
                        //           },
                        //         ),
                        //       ],
                        //     )),
                        //     const SizedBox(width: 10),
                        //     Expanded(
                        //         child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         const Text('Last Name:',
                        //             style: TextStyle(
                        //               fontSize: 16,
                        //               fontWeight: FontWeight.bold,
                        //             )),
                        //         TextFormField(
                        //           decoration: const InputDecoration(
                        //             labelText: 'Last Name',
                        //             border: OutlineInputBorder(),
                        //           ),
                        //           validator: (value) {
                        //             if (value == null || value.isEmpty) {
                        //               return 'Please enter your Last name';
                        //             }
                        //             return null;
                        //           },
                        //         ),
                        //       ],
                        //     )),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Your action here
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                              255, 35, 58, 77), // Background color
                          foregroundColor: Colors.white, // Text color
                          elevation: 5, // Elevation (shadow)
                          padding: const EdgeInsets.all(16), // Padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8), // Button border radius
                          )),
                      //////////////////// METHOD 2 //////////////////
                      // style: ButtonStyle(
                      //     backgroundColor: MaterialStateProperty.all(
                      //         Colors.blue), // Background color
                      //     foregroundColor: MaterialStateProperty.all(
                      //         Colors.white), // Text color
                      //     elevation: MaterialStateProperty.all(
                      //         5), // Elevation (shadow)
                      //     padding: MaterialStateProperty.all(
                      //         EdgeInsets.all(16)), // Padding
                      //     shape: MaterialStateProperty.all(
                      //       RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(
                      //             8), // Button border radius
                      //       ),
                      //     )),
                      ///////// METHOD 3- MATERIAL BUTTON ////////////////
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Submit',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_circle_right_sharp,
                            size: 22,
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ]))),
    );
  }
}
