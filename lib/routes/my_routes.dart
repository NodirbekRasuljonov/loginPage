import 'package:flutter/material.dart';
import 'package:login_page/screens/login_page.dart';
import 'package:login_page/screens/my_home_page.dart';
import 'package:login_page/screens/splash.dart';

class MyRoutes {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case './':
        return MaterialPageRoute(builder: (context) =>const SplashScreen());
        case './homepage':
        return MaterialPageRoute(builder: (context) =>const MyHomePage());
        case './loginPage':
        return MaterialPageRoute(builder: (context) =>const LogInPage());
    }
  }
}
