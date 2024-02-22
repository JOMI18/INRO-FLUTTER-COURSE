import 'package:flutter/material.dart';

// If its just 1 on the HomePage
class BottomBar extends StatelessWidget {
  const BottomBar({super.key});
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
            surfaceTintColor: Colors.white,
            color: Colors.white.withOpacity(1),
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: buttonStyle(),
                  child: bottomButtonContent(Icons.home, "Home"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonStyle(),
                  child: bottomButtonContent(Icons.cases_outlined, "Savings"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonStyle(),
                  child: bottomButtonContent(Icons.savings_outlined, "Payment"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonStyle(),
                  child: bottomButtonContent(Icons.monetization_on, "Loans"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: buttonStyle(),
                  child: bottomButtonContent(Icons.account_circle, "Account"),
                ),
              ],
            )),
      ),
    );
  }
}

Widget bottomButtonContent(IconData icon, String label) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        icon,
        size: 25,
        color: Colors.grey.shade700,
      ),
      Text(
        label,
        style: TextStyle(
          color: Colors.grey.shade700,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}

ButtonStyle buttonStyle() {
  return ButtonStyle(
    padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
    fixedSize: MaterialStateProperty.all(const Size(60, 60)),
    elevation: MaterialStateProperty.all(0),
    shape: MaterialStateProperty.all(const RoundedRectangleBorder()),
    overlayColor: MaterialStateProperty.all(Colors.transparent),
  );
}
