import 'package:flutter/material.dart';
import '../pages/tabs.dart';
import '../pages/user/login.dart';
import '../pages/user/register.dart';
import '../pages/user/create.dart';
import '../pages/courses/story.dart';
import '../pages/products/appbardemo.dart';
import '../pages/products/tabbarcontroller.dart';

final Map routes = {
  '/': (context, {arguments}) => Tabs(
        tabIndex: arguments,
      ),
  '/login': (context, {arguments}) => LoginPage(arguments: arguments),
  '/register': (context, {arguments}) => RegisterPage(arguments: arguments),
  '/create': (context, {arguments}) => CreatePage(arguments: arguments),
  '/story': (context, {arguments}) => StoryPage(arguments: arguments),
  '/appbar': (context, {arguments}) => AppBarDemo(arguments: arguments),
  '/tabcontroller': (context, {arguments}) =>
      TabbarControllerPage(arguments: arguments)
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
