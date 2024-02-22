import 'package:flutter/material.dart';

class NavigationTabs extends StatelessWidget {
  const NavigationTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: const Text("NAVIGATION TABS"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const Text(
                  "CARBON",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "default");
                  },
                  child: const Text("Carbon"),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "REUSABLES",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "bottomNavigation");
                  },
                  child: const Text("Bottom Navigation"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "alert");
                  },
                  child: const Text("Alert"),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "LAYOUTS",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "pureMath");
                  },
                  child: const Text("Pure Math"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "signUpForm");
                  },
                  child: const Text("Sign Up"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "switchSliders");
                  },
                  child: const Text("Switch Sliders"),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "ANIMATIONS",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "transitions");
                  },
                  child: const Text("Transitions"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
