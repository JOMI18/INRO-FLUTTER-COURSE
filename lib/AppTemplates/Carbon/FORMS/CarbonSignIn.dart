import 'package:classapp/AppTemplates/Carbon/FORMS/CarbonSignUp.dart';
import 'package:classapp/AppTemplates/Carbon/TRANSITION/SlideAnimation.dart';
import 'package:flutter/material.dart';

class CarbonSignIn extends StatelessWidget {
  const CarbonSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          surfaceTintColor: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                " Don't have a {App} account?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Navigator.pushNamed(context, "signUp");
                  Navigator.of(context).push(
                    SlideAnimation(
                      page: CarbonSignUp(),
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    ),
                  );
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 3, 85, 152),
                  ),
                ),
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 14),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.home_work_rounded,
                      size: 40,
                      color: Color.fromARGB(255, 3, 85, 152),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "{App Name}",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 3, 85, 152),
                      ),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: const CircleAvatar(
                    radius: 13,
                    backgroundColor: Color.fromARGB(255, 31, 31, 31),
                    child: Icon(
                      Icons.question_mark_outlined,
                      size: 18,
                      color: Color.fromARGB(245, 255, 255, 255),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome to App",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Complete your details below to continue your {App} account",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical:
                                        10, // Adjust vertical padding as needed
                                    horizontal:
                                        10, // Adjust horizontal padding as needed
                                  ),
                                  filled: true,
                                  alignLabelWithHint: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  fillColor: Colors.grey.shade200,
                                  hintText: "+234",
                                  hintStyle: const TextStyle(
                                    color: Color.fromARGB(255, 133, 133, 133),
                                  ),
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
                                style: TextStyle(fontWeight: FontWeight.w800),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 900,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                      vertical:
                                          10, // Adjust vertical padding as needed
                                      horizontal:
                                          10, // Adjust horizontal padding as needed
                                    ),
                                    filled: true,
                                    alignLabelWithHint: true,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    fillColor: Colors.grey.shade200,
                                    hintText: "xxxx-xxxx-xxx",
                                    hintStyle: const TextStyle(
                                      color: Color.fromARGB(255, 133, 133, 133),
                                    ),
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
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Pin",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            child: TextFormField(
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical:
                                        10, // Adjust vertical padding as needed
                                    horizontal:
                                        10, // Adjust horizontal padding as needed
                                  ),
                                  filled: true,
                                  alignLabelWithHint: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  fillColor: Colors.grey.shade200,
                                  hintText: "xxxx",
                                  hintStyle: const TextStyle(
                                    color: Color.fromARGB(255, 133, 133, 133),
                                  ),
                                  suffixIcon: const Icon(
                                    Icons.remove_red_eye_sharp,
                                    color: Color.fromARGB(255, 65, 65, 65),
                                    size: 20,
                                  )),
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
