import 'package:flutter/material.dart';

class CarbonSignUp extends StatelessWidget {
  const CarbonSignUp({super.key});

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
          "Welcome to {App}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create your {App} account ",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                ),
                Text(
                  "Enter your details exactly as they appear on your BVN ",
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 16, 12, 8),
                  child: Form(
                      child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "First Name",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical:
                                    10, // Adjust vertical padding as needed
                                horizontal:
                                    10, // Adjust horizontal padding as needed
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(121, 221, 221, 221),
                              border: OutlineInputBorder(),
                              hintText: "John",
                              labelStyle: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(190, 17, 25, 29)),
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(222, 115, 115, 115)),
                            ),
                            style: TextStyle(fontSize: 18, letterSpacing: 1.2),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Surname / Last Name",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical:
                                    10, // Adjust vertical padding as needed
                                horizontal:
                                    10, // Adjust horizontal padding as needed
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(121, 221, 221, 221),
                              border: OutlineInputBorder(),
                              hintText: "Smith",
                              labelStyle: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(190, 17, 25, 29)),
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(222, 115, 115, 115)),
                            ),
                            style: TextStyle(fontSize: 18, letterSpacing: 1.2),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical:
                                    10, // Adjust vertical padding as needed
                                horizontal:
                                    10, // Adjust horizontal padding as needed
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(121, 221, 221, 221),
                              border: OutlineInputBorder(),
                              hintText: "johnsmith@gmail.com",
                              labelStyle: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(190, 17, 25, 29)),
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(222, 115, 115, 115)),
                            ),
                            style: TextStyle(fontSize: 18, letterSpacing: 1.2),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gender",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical:
                                    10, // Adjust vertical padding as needed
                                horizontal:
                                    10, // Adjust horizontal padding as needed
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(121, 221, 221, 221),
                              border: OutlineInputBorder(),
                              hintText: "Gender",
                              suffixIcon: Icon(
                                Icons.arrow_drop_down_outlined,
                                size: 35,
                              ),
                              labelStyle: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(190, 17, 25, 29)),
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(222, 115, 115, 115)),
                            ),
                            style: TextStyle(fontSize: 18, letterSpacing: 1.2),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nationality",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.arrow_drop_down_outlined,
                                size: 35,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical:
                                    10, // Adjust vertical padding as needed
                                horizontal:
                                    10, // Adjust horizontal padding as needed
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(121, 221, 221, 221),
                              border: OutlineInputBorder(),
                              hintText: "Select",
                              labelStyle: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(190, 17, 25, 29)),
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(222, 115, 115, 115)),
                            ),
                            style: TextStyle(fontSize: 18, letterSpacing: 1.2),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Date of Birth",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical:
                                    10, // Adjust vertical padding as needed
                                horizontal:
                                    10, // Adjust horizontal padding as needed
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(121, 221, 221, 221),
                              border: OutlineInputBorder(),
                              hintText: "mm/dd/yyyy",
                              suffixIcon: Icon(Icons.calendar_today),
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(222, 115, 115, 115)),
                              labelStyle: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(190, 17, 25, 29)),
                            ),
                            style: TextStyle(fontSize: 18, letterSpacing: 1.2),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Country Code",
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 120,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                        vertical:
                                            10, // Adjust vertical padding as needed
                                        horizontal:
                                            10, // Adjust horizontal padding as needed
                                      ),
                                      filled: true,
                                      alignLabelWithHint: true,
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      fillColor: Colors.grey.shade200,
                                      hintText: "+234",
                                      labelStyle: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.italic,
                                          color:
                                              Color.fromARGB(190, 17, 25, 29)),
                                      hintStyle: TextStyle(
                                          fontSize: 16,
                                          fontStyle: FontStyle.italic,
                                          color: Color.fromARGB(
                                              222, 115, 115, 115)),
                                      suffixIcon: const Icon(
                                        Icons.arrow_drop_down_sharp,
                                        color: Color.fromARGB(255, 65, 65, 65),
                                        size: 28,
                                      )),
                                ),
                              ),
                            ],
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Phone Number",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w800),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    width: 900,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                          vertical:
                                              10, // Adjust vertical padding as needed
                                          horizontal:
                                              10, // Adjust horizontal padding as needed
                                        ),
                                        filled: true,
                                        alignLabelWithHint: true,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        fillColor: Colors.grey.shade200,
                                        labelStyle: TextStyle(
                                            fontSize: 15,
                                            fontStyle: FontStyle.italic,
                                            color: Color.fromARGB(
                                                190, 17, 25, 29)),
                                        hintText: "xxxx-xxxx-xxx",
                                        hintStyle: TextStyle(
                                            fontSize: 16,
                                            fontStyle: FontStyle.italic,
                                            color: Color.fromARGB(
                                                222, 115, 115, 115)),
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Password",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.remove_red_eye),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical:
                                    10, // Adjust vertical padding as needed
                                horizontal:
                                    10, // Adjust horizontal padding as needed
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(121, 221, 221, 221),
                              border: OutlineInputBorder(),
                              hintText: "Password",
                              labelStyle: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(190, 17, 25, 29)),
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(222, 115, 115, 115)),
                            ),
                            style: TextStyle(fontSize: 18, letterSpacing: 1.2),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Confirm Password",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                vertical:
                                    10, // Adjust vertical padding as needed
                                horizontal:
                                    10, // Adjust horizontal padding as needed
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(121, 221, 221, 221),
                              border: OutlineInputBorder(),
                              hintText: "Confirm Password",
                              suffixIcon: Icon(Icons.remove_red_eye),
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(222, 115, 115, 115)),
                              labelStyle: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                  color: Color.fromARGB(190, 17, 25, 29)),
                            ),
                            style: TextStyle(fontSize: 18, letterSpacing: 1.2),
                          ),
                        ],
                      ),
                    ],
                  )),
                ),
              ),
            ),
            Column(
              children: [
                ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(500, 60),
                      elevation: 5,
                      foregroundColor: Colors.white,
                      disabledForegroundColor: Colors.black,
                      disabledBackgroundColor: Color.fromARGB(164, 3, 85, 152),
                      backgroundColor: Color.fromARGB(255, 3, 85, 152),
                    ),
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontSize: 18),
                    )),
                const SizedBox(
                  height: 5,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
