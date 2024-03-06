import 'package:flutter/material.dart';

// PRACTICE
import 'package:classapp/AppTemplates/WIDGETS/Navigations.dart';

import 'package:classapp/AppTemplates/WIDGETS/REUSABLES/PROGRESSBARS/progressbars.dart';
import 'package:classapp/AppTemplates/WIDGETS/REUSABLES/BOTTOMNAV/BottomNavigation.dart';
import 'package:classapp/AppTemplates/WIDGETS/REUSABLES/ALERTS/Alert.dart';

import 'package:classapp/AppTemplates/WIDGETS/ANIMATIONS/FadeTransition.dart';
import 'package:classapp/AppTemplates/WIDGETS/ANIMATIONS/AnimatedWidget.dart';
import 'package:classapp/AppTemplates/WIDGETS/ANIMATIONS/SlideAnimation.dart';
import 'package:classapp/AppTemplates/WIDGETS/ANIMATIONS/ItemAnimations.dart';

import 'package:classapp/AppTemplates/WIDGETS/LAYOUTS/FormLayout.dart';
import 'package:classapp/AppTemplates/WIDGETS/LAYOUTS/PageView.dart';
import 'package:classapp/AppTemplates/WIDGETS/LAYOUTS/PureMath.dart';
import 'package:classapp/AppTemplates/WIDGETS/LAYOUTS/Sliders+Switches.dart';

// The-Betterlife-App
import "package:classapp/AppTemplates/The-Betterlife-App/ImportsPath.dart";

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
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 3, 53, 255),
          surfaceVariant: Color.fromARGB(255, 187, 221, 250),
          secondary: const Color.fromARGB(228, 211, 231, 255),
        ),
        // textTheme: const TextTheme(
        //   bodyLarge: TextStyle(color: Colors.black),
        //   displayLarge: const TextStyle(color: Colors.red),
        // ),
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 71, 203)),
        useMaterial3: true,
      ),

      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,

      // initialRoute: "navigation",
      initialRoute: "indexPage",
      // initialRoute: "forgotPin",

      routes: {
        //////////////// The Betterlife APP  //////////////

        //////// ENTRY FORMS
        'indexPage': (context) => BIndexPage(),
        "signUp": (context) => const BSignUp(),
        "logIn": (context) => BSignIn(),
        "alreadySignedIn": (context) => const BAlreadySignedIn(),
        "forgotPin": (context) => const BForgotPin(),

        //////// DEFAULTS
        "default": (context) => const DefaultScreen(),
        "home": (context) => BHome(),

        //////// APPBAR
        "profile": (context) => BProfile(),
        // WITHIN PROFILE
        "profileInfo": (context) => BProfileInfo(),
        "security": (context) => const BSecurity(),
        "signOut": (context) => const SignOutAlert(),

        "support": (context) => BSupport(),
        // WITHIN SUPPORT
        'gettingLoan': (context) => const LoanPageView(),
        'challenge': (context) => const ChallengePage(),

        "notify": (context) => const BNotification(),

        //////// MONEY TAB
        'addMoney': (context) => BAddMoney(),
        'sendMoney': (context) => const BSendMoney(),

        //////// QUICK ACCESS
        'dataAirtime': (context) => AirtimeDataCombo(),
        'payBills': (context) => BillTabs(),

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
        // 'itemTransition': (context) => AnimatedComponent(),
        '/fsr': (context) => FstScreen(),
        '/snd': (context) => SndScreen(),
        'progress': (context) => SignUpPage(),

        'navigation': (context) => const NavigationTabs(),
      },

      // Use onGenerateRoute to specify custom PageRouteBuilder
      // onGenerateRoute: (settings) {
      //   // Check if the route is valid and return SlideAnimation
      //   switch (settings.name) {
      //     case '/second':
      //       return SlideAnimation(page: SecondPage());
      //     case '/third':
      //       return SlideAnimation(page: ThirdPage());
      //     default:
      //       return null; // Return null if route is not found
      //   }
      // },
      // // Handle unknown routes here
      // onUnknownRoute: (settings) {
      //   return MaterialPageRoute(builder: (context) => UnknownPage());
      // },
    );
  }
}


// StatelessWidget is a widget that doesn't have any mutable state. Once created, the properties of a StatelessWidget cannot change.



// CREATING NEW PROJECTS
// flutter create {NAME}


// to increase appbar height -- at the end of file
  // @override
  // Size get preferredSize => Size.fromHeight(60);