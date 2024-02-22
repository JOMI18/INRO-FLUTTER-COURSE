import "package:classapp/AppTemplates/Carbon/POPUPS/CustomAlertDialog.dart";
import "package:flutter/material.dart";

class SignOutAlert extends StatelessWidget {
  const SignOutAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return CustomAlertDialog(
                    title:
                        "Request Confirmation: Are you sure you want to close this Account?",
                    content: const Text(""),
                    actions: [
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 255, 17, 0))),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "No",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 0, 255, 8))),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircularProgressIndicator(),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Please Wait...",
                                        style: TextStyle(fontSize: 18),
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
                    ]);
              });
      
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(200, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          disabledBackgroundColor: const Color.fromARGB(255, 165, 215, 255),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 213, 3, 3),
        ),
        icon: const Icon(Icons.delete),
        label: const Text("Close Account"));
  }
}
