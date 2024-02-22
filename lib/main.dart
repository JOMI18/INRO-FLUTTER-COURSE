import 'package:flutter/material.dart';
// import 'dart:math';

// import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';

// import 'package:classapp/AppTemplates/WIDGETS/Alert.dart';
// import 'package:classapp/AppTemplates//WIDGETS/FormLayout.dart';
// import "package:classapp/AppTemplates//WIDGETS/PageView.dart";
// import "package:classapp/AppTemplates//WIDGETS/PureMath.dart";
// import "package:classapp/AppTemplates//WIDGETS/Sliders+Switches.dart";

import "package:classapp/AppTemplates/Carbon/CarbonAppHome.dart";

import 'package:classapp/AppTemplates/Carbon/QUICKACCESS/CarbonAirtime.dart';
import 'package:classapp/AppTemplates/Carbon/QUICKACCESS/CarbonAirtimeDataCombo.dart';
import 'package:classapp/AppTemplates/Carbon/QUICKACCESS/CarbonData.dart';

import 'package:classapp/AppTemplates/Carbon/INDIRECTNAVIGATIONS/CarbonAppPageView.dart';
import 'package:classapp/AppTemplates/Carbon/INDIRECTNAVIGATIONS/CarbonChallenge.dart';

import 'package:classapp/AppTemplates/Carbon/APPBAR/CarbonNotification.dart';
import 'package:classapp/AppTemplates/Carbon/APPBAR/CarbonProfile.dart';
import 'package:classapp/AppTemplates/Carbon/APPBAR/CarbonSupport.dart';

import 'package:classapp/AppTemplates/Carbon/MONEYTRANSACTIONS/CarbonSendMoney.dart';
import 'package:classapp/AppTemplates/Carbon/MONEYTRANSACTIONS/CarbonAddMoney.dart';

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
      themeMode: ThemeMode.light, // Default to light mode
      initialRoute: "/",
      routes: {
        // CARBON APP
        "/": (context) => CarbonAppWidget(),

        // APPBAR
        "profile": (context) => CarbonProfile(),
        "notify": (context) => CarbonNotification(),
        "support": (context) => CarbonSupport(),

        // WITHIN SUPPORT
        'gettingLoan': (context) => LoanPageView(),
        'challenge': (context) => ChallengePage(),

        'addMoney': (context) => CarbonAddMoney(),
        'sendMoney': (context) => CarbonSendMoney(),
        'dataAirtime': (context) => AirtimeDataCombo(),

        'airtime': (context) => CarbonAirtime(),
        'buydata': (context) => CarbonData()
      },

      // home: ThePureMathApp(
      //   title: 'Pure math',
      // ),

      // home: const MyForm(
      //   title: 'Form',
      // ),

      // home: const SwitchesNSliders(
      //   title: 'SwitchesNSliders ',
      // ),

      // home: const PageView(
      //   title: 'Hello ',
      // ),

      // home: const UsingAlert(
      //   title: "Alerts",
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

// class PageView extends StatelessWidget {
//   const PageView({super.key, title});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: PageViewWidget());
//   }
// }

// class UsingAlert extends StatelessWidget {
//   const UsingAlert({super.key, title});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AlertBox(),
//     );
//   }
// }
