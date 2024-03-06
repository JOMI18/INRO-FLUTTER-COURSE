import 'package:flutter/material.dart';
import "package:classapp/AppTemplates/The-Betterlife-App/ImportsPath.dart";

class BAddMoney extends StatelessWidget {
  BAddMoney({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorscheme = Theme.of(context).colorScheme;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: Colors.white,
        child: Container(
          decoration: BoxDecoration(
              color: colorscheme.secondary,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                width: 20,
              ),
              Icon(
                Icons.sunny,
                color: Theme.of(context).iconTheme.color,
                size: 24,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Upgrade your account for higher transaction limits",
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ),
      ),
      appBar: const BAppBars(title: "Fund account"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ComponentSlideIns(
                beginOffset: const Offset(0, -2.0),
                // duration: Duration(milliseconds: 00),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: 75,
                  decoration: BoxDecoration(
                      color: colorscheme.secondary,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const SizedBox(
                            height: 6,
                          ),
                          Icon(
                            Icons.sunny,
                            color: Theme.of(context).iconTheme.color,
                            size: 24,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 290,
                        height: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "You earn monthly interest by storing money in your account.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 14),
                            ),
                            GestureDetector(
                              child: Text(
                                "Tap here to learn more",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 24,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 6,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 10,
                            child: Icon(
                              Icons.close,
                              color: Colors.grey.shade900,
                              size: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              AccountCard(colorScheme: colorscheme),
              const SizedBox(
                height: 20,
              ),
              ComponentSlideIns(
                beginOffset: const Offset(0.0, 4.0),
                duration: const Duration(milliseconds: 1100),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text("Other Options",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700)),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: 378,
                            child: OptionsCard(
                                title: "USSD",
                                icon: Icons.tag,
                                subText:
                                    "Transfer using your other bank's USSD code")),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 378,
                          child: OptionsCard(
                              title: "Debit Card",
                              icon: Icons.credit_card,
                              subText: "Fund your wallet with your bank"),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

