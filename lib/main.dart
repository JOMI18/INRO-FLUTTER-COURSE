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
import 'package:classapp/AppTemplates/The-Betterlife-App/DefaultScreenView.dart';

import 'package:classapp/AppTemplates/The-Betterlife-App/BOTTOM-BAR/Home.dart';

import 'package:classapp/AppTemplates/The-Betterlife-App/QUICK-ACCESS/AirtimeDataCombo.dart';
import 'package:classapp/AppTemplates/The-Betterlife-App/QUICK-ACCESS/BillTabs.dart';

import 'package:classapp/AppTemplates/The-Betterlife-App/INDIRECT-NAVIGATION/FROM-SUPPORT/LoanPageView.dart';
import 'package:classapp/AppTemplates/The-Betterlife-App/INDIRECT-NAVIGATION/FROM-SUPPORT/Challenge.dart';
import 'package:classapp/AppTemplates/The-Betterlife-App/INDIRECT-NAVIGATION/FROM-ACCOUNT/ProfileDetails.dart';
import 'package:classapp/AppTemplates/The-Betterlife-App/INDIRECT-NAVIGATION/FROM-ACCOUNT/Security.dart';

import 'package:classapp/AppTemplates/The-Betterlife-App/APP-BAR/Notification.dart';
import 'package:classapp/AppTemplates/The-Betterlife-App/APP-BAR/Profile.dart';
import 'package:classapp/AppTemplates/The-Betterlife-App/APP-BAR/Support.dart';

import 'package:classapp/AppTemplates/The-Betterlife-App/MONEY-TRANSACTIONS/SendMoney.dart';
import 'package:classapp/AppTemplates/The-Betterlife-App/MONEY-TRANSACTIONS/AddMoney.dart';

import 'package:classapp/AppTemplates/The-Betterlife-App/FORMS/AlreadySignedIn.dart';
import 'package:classapp/AppTemplates/The-Betterlife-App/FORMS/SignIn.dart';
import 'package:classapp/AppTemplates/The-Betterlife-App/FORMS/SignUp.dart';
import 'package:classapp/AppTemplates/The-Betterlife-App/FORMS/ForgotPin.dart';

import 'package:classapp/AppTemplates/The-Betterlife-App/POPUPS/SignOutAlert.dart';

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
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 3, 85, 152),
          surfaceTint: Colors.white,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(), // Dark theme
      themeMode: ThemeMode.light, // Default to light mode

      // initialRoute: "navigation",
      // initialRoute: "default",
      initialRoute: "forgotPin",

      routes: {
        //////////////// The Betterlife APP  //////////////

        //////// ENTRY FORMS
        "signUp": (context) => const BSignUp(),
        // "signUp": (context) => const BSignUps(), // refactoring
        "logIn": (context) =>  BSignIn(),
        "alreadySignedIn": (context) => const BAlreadySignedIn(),
        "forgotPin": (context) => const BForgotPin(),

        //////// DEFAULTS
        "default": (context) => const DefaultScreen(),
        "home": (context) => const BHome(),

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
        'addMoney': (context) => const BAddMoney(),
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