import 'package:disney_plus_reimagined/view/pages/home.dart';
import 'package:disney_plus_reimagined/view/pages/watchers.dart';
import 'package:flutter/material.dart';
import 'package:disney_plus_reimagined/view/pages/welcome.dart';

const String welcome = "welcome";
const String watchers = "watchers";
const String home = "home";

// === routes controller === //
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case welcome:
      return MaterialPageRoute(
        builder: (context) => const Welcome(),
      );
    case watchers:
      return MaterialPageRoute(
        builder: (context) => const Watchers(),
      );
    case home:
      return MaterialPageRoute(
        builder: (context) => const Home(),
      );
    default:
      throw ("this route is unavailable");
  }
}
