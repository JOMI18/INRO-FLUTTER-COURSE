// import 'dart:math';

import "package:classapp/AppTemplates/Carbon/CarbonAddMoney.dart";
import "package:classapp/AppTemplates/Carbon/CarbonAirtime.dart";
import "package:classapp/AppTemplates/Carbon/CarbonAppHome.dart";
import "package:classapp/AppTemplates/Carbon/CarbonAppPageView.dart";
import "package:classapp/AppTemplates/Carbon/CarbonData.dart";
import 'package:classapp/AppTemplates/FormLayout.dart';
import "package:classapp/AppTemplates/PageView.dart";
import "package:classapp/AppTemplates/PureMath.dart";
import "package:classapp/AppTemplates/Sliders+Switches.dart";
import 'package:flutter/material.dart';

// import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(), // Dark theme
      themeMode: ThemeMode.light,
      initialRoute: "/",
      routes: {
        "/": (context) => CarbonApp(),
        'loan': (context) => CarbonLoan(),
        'addMoney': (context) => CarbonAddMoney(),
        'airtime': (context) => CarbonAirtime(),
        'buydata': (context) => CarbonData()
      }, // Default to light mode

      // home: ThePureMathApp(
      //   title: 'Pure math',
      // ),

      // home: const MyForm(
      //   title: 'Form',
      // ),

      // home: const SwitchesNSliders(
      //   title: 'SwitchesNSliders ',
      // ),

      // home: CarbonApp(
      //   title: 'Hello ',
      // ),

      // home: const PageView(
      //   title: 'Hello ',
      // ),

      // home: const CarbonLoan(
      //   title: 'Carbon ',
      // ),
    );
  }
}

////////////  CLASSES  //////////////

// class ThePureMathApp extends StatelessWidget {
//   const ThePureMathApp({super.key, title});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PureMathAppWidget(),
//     );
//   }
// }

// class MyForm extends StatelessWidget {
//   const MyForm({super.key, title});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FormWidget(),
//     );
//   }
// }

// StatelessWidget is a widget that doesn't have any mutable state. Once created, the properties of a StatelessWidget cannot change.

// class SwitchesNSliders extends StatelessWidget {
//   const SwitchesNSliders({super.key, title});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SwitchAndSlidersWidget(),
//     );
//   }
// }

class CarbonApp extends StatelessWidget {
  const CarbonApp({super.key, title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarbonAppWidget(),
    );
  }
}

// class PageView extends StatelessWidget {
//   const PageView({super.key, title});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: PageViewWidget());
//   }
// }

class CarbonLoan extends StatelessWidget {
  const CarbonLoan({super.key, title});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoanPageView(),
    );
  }
}
