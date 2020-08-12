import 'package:flutter/material.dart';
import '../pages//Tabs.dart';
import '../pages/user/login.dart';
import '../pages/user/register.dart';
import '../pages/user/create.dart';

final Map routes = {
  '/': (context, {arguments}) => Tabs(
        tabIndex: arguments,
      ),
  '/login': (context, {arguments}) => LoginPage(arguments: arguments),
  '/register': (context, {arguments}) => RegisterPage(arguments: arguments),
  '/create': (context, {arguments}) => CreatePage(arguments: arguments)
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
