import 'package:assignment_2/home.dart' as home;
import 'package:assignment_2/links.dart' as links;
import 'package:assignment_2/food.dart' as food;
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const home.Homepage(),
      '/facebook': (context) => const links.Facebook(),
      '/instagram': (context) => const links.Instagram(),
      "/veggi": (context) => const food.Veggi(),
      "/cheesi": (context) => const food.Cheesi(),
      "/frenchi": (context) => const food.Frenchi(),
    },
  ));
}
