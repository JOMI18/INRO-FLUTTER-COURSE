import "package:classapp/AppTemplates/The-Betterlife-App/ImportsPath.dart";

import 'package:flutter/material.dart';

class BSendMoney extends StatelessWidget {
  const BSendMoney({super.key});

  @override
  Widget build(BuildContext context) {
    IconThemeData iconTheme = Theme.of(context).iconTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: BAppBars(title: "Send Money"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ComponentSlideIns(
                beginOffset: Offset(2.0, 0.0),
                endOffset: Offset(0.0, 0.0),
                duration: Duration(milliseconds: 1000),
                child: Container(
                  height: 75,
                  decoration: BoxDecoration(
                      color: colorScheme.secondary,
                      borderRadius: BorderRadius.circular(8)),
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 148, 194, 251)
                              .withOpacity(0.7),
                          child: Icon(
                            Icons.add_circle,
                            color: iconTheme.color,
                            size: 24,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "New Recipient",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Send money to any bank account",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade800,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ContactsCard(iconTheme: iconTheme),
              const SizedBox(
                height: 20,
              ),
              TransferCard(iconTheme: iconTheme),
              const SizedBox(
                height: 20,
              ),
              BeneficiaryCard(iconTheme: iconTheme),
            ],
          ),
        ),
      ),
    );
  }
}
