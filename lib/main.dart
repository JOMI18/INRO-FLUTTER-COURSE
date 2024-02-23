
import 'package:flutter/material.dart';
// import 'dart:math';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:intl/intl.dart';

// PRACTICE
import 'package:classapp/AppTemplates/WIDGETS/Navigations.dart';

import 'package:classapp/AppTemplates/WIDGETS/REUSABLES/BOTTOMNAV/BottomNavigation.dart';
import 'package:classapp/AppTemplates/WIDGETS/REUSABLES/ALERTS/Alert.dart';

import 'package:classapp/AppTemplates/WIDGETS/ANIMATIONS/FadeTransition.dart';
import 'package:classapp/AppTemplates/WIDGETS/ANIMATIONS/AnimatedWidget.dart';
import 'package:classapp/AppTemplates/WIDGETS/ANIMATIONS/SlideAnimation.dart';

import 'package:classapp/AppTemplates/WIDGETS/LAYOUTS/FormLayout.dart';
import 'package:classapp/AppTemplates/WIDGETS/LAYOUTS/PageView.dart';
import 'package:classapp/AppTemplates/WIDGETS/LAYOUTS/PureMath.dart';
import 'package:classapp/AppTemplates/WIDGETS/LAYOUTS/Sliders+Switches.dart';

// CARBON
import 'package:classapp/AppTemplates/Carbon/DefaultScreenView.dart';

import 'package:classapp/AppTemplates/Carbon/BOTTOMBAR/CarbonAppHome.dart';

import 'package:classapp/AppTemplates/Carbon/QUICKACCESS/CarbonAirtime.dart';
import 'package:classapp/AppTemplates/Carbon/QUICKACCESS/CarbonAirtimeDataCombo.dart';
import 'package:classapp/AppTemplates/Carbon/QUICKACCESS/CarbonData.dart';
import 'package:classapp/AppTemplates/Carbon/QUICKACCESS/CarbonBillTabs.dart';

import 'package:classapp/AppTemplates/Carbon/INDIRECTNAVIGATIONS/FROMSUPPORT/CarbonAppPageView.dart';
import 'package:classapp/AppTemplates/Carbon/INDIRECTNAVIGATIONS/FROMSUPPORT/CarbonChallenge.dart';
import 'package:classapp/AppTemplates/Carbon/INDIRECTNAVIGATIONS/FROMACCOUNT/CarbonProfileDetails.dart';
import 'package:classapp/AppTemplates/Carbon/INDIRECTNAVIGATIONS/FROMACCOUNT/CarbonSecurity.dart';

import 'package:classapp/AppTemplates/Carbon/APPBAR/CarbonNotification.dart';
import 'package:classapp/AppTemplates/Carbon/APPBAR/CarbonProfile.dart';
import 'package:classapp/AppTemplates/Carbon/APPBAR/CarbonSupport.dart';

import 'package:classapp/AppTemplates/Carbon/MONEYTRANSACTIONS/CarbonSendMoney.dart';
import 'package:classapp/AppTemplates/Carbon/MONEYTRANSACTIONS/CarbonAddMoney.dart';

import 'package:classapp/AppTemplates/Carbon/FORMS/CarbonAlreadySignedIn.dart';
import 'package:classapp/AppTemplates/Carbon/FORMS/CarbonSignIn.dart';
import 'package:classapp/AppTemplates/Carbon/FORMS/CarbonSignUp.dart';

import 'package:classapp/AppTemplates/Carbon/POPUPS/SignOutAlert.dart';

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

      initialRoute: "navigation",

      routes: {
        //////////////// CARBON APP  //////////////

        //////// ENTRY FORMS
        "signUp": (context) => const CarbonSignUp(),
        "logIn": (context) => const CarbonSignIn(),
        "alreadySignedIn": (context) => const CarbonAlreadySignedIn(),

        //////// DEFAULTS
        "default": (context) => const DefaultScreen(),
        "home": (context) => CarbonAppHome(),

        //////// APPBAR
        "profile": (context) => CarbonProfile(),
        // WITHIN PROFILE
        "profileInfo": (context) => CarbonProfileInfo(),
        "security": (context) => CarbonSecurity(),
        "signOut": (context) => SignOutAlert(),

        "support": (context) => CarbonSupport(),
        // WITHIN SUPPORT
        'gettingLoan': (context) => const LoanPageView(),
        'challenge': (context) => const ChallengePage(),

        "notify": (context) => const CarbonNotification(),

        //////// MONEY TAB
        'addMoney': (context) => const CarbonAddMoney(),
        'sendMoney': (context) => const CarbonSendMoney(),

        //////// QUICK ACCESS
        'dataAirtime': (context) => AirtimeDataCombo(),
        'payBills': (context) => CarbonBillTabs(),
        'airtime': (context) => const CarbonAirtime(),
        'buydata': (context) => const CarbonData(),

        //////////////  CLASSES -- APP LAYOUTS   //////////////
        'pureMath': (context) => const PureMathAppWidget(),
        'signUpForm': (context) => const FormWidget(),
        'switchSliders': (context) => const SwitchAndSlidersWidget(),
        'pageView': (context) => PageViewWidget(),

        'alert': (context) => const AlertBox(),
        'bottomNavigation': (context) => const BottomNavigation(),

        'transitions': (context) => SlideAnimationExample(),
        'animation': (context) => MyAnimatedWidget(),
        'fadeTransition': (context) => FirstScreen(),

        'navigation': (context) => const NavigationTabs(),
      },
    );
  }
}





// StatelessWidget is a widget that doesn't have any mutable state. Once created, the properties of a StatelessWidget cannot change.




// CREATING NEW PROJECTS
// flutter create {NAME}