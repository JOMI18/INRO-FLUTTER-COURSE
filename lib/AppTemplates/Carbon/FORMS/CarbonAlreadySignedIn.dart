import 'package:classapp/AppTemplates/Carbon/POPUPS/SignOutAlert.dart';
import 'package:classapp/AppTemplates/Carbon/TRANSITION/SlideAnimation.dart';
import 'package:flutter/material.dart';

class CarbonAlreadySignedIn extends StatelessWidget {
  const CarbonAlreadySignedIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "{App Name}",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
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
            Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 280,
                          child: Column(
                            children: [
                              Text(
                                "Welcome back, Jonathan Smith!",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Enter your pin to continue to your {App} account",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF424242),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Card(
                      surfaceTintColor: Colors.transparent,
                      elevation: 5,
                      child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 32,
                          child: Icon(
                            Icons.account_circle,
                            size: 60,
                            color: Color(0xFF252525),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Password(),
                        SizedBox(
                          width: 8,
                        ),
                        Password(),
                        SizedBox(
                          width: 8,
                        ),
                        Password(),
                        SizedBox(
                          width: 8,
                        ),
                        Password(),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Forgot PIN?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Not Jonathan?",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigator.pushNamed(context, "signOut");
                            Navigator.of(context).push(
                              SlideAnimation(
                                page: SignOutAlert(),
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              ),
                            );
                          },
                          child: const Text(
                            'Sign Out',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      child: TextFormField(
        maxLength: 1,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10, // Adjust vertical padding as needed
            horizontal: 10, // Adjust horizontal padding as needed
          ),
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          fillColor: Colors.grey.shade200,
          counter: const SizedBox.shrink(), // removes the counter
        ),
      ),
    );
  }
}
