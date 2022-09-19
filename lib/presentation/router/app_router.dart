

import 'package:flutter/material.dart';

import '../screens/login_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => LoginScreen());
          default:
        return MaterialPageRoute(builder: (_) => LoginScreen());
    }
  }
}