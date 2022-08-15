import 'package:assignment_2/widgets/_utils.dart';
import 'package:flutter/material.dart';

class Facebook extends StatefulWidget {
  const Facebook({Key? key}) : super(key: key);

  @override
  State<Facebook> createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Facebook"), actions: <Widget>[
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
            icon: const Icon(Icons.arrow_back))
      ]),
      body: social("https://facebook.com/"),
      bottomNavigationBar: bottomBar(1, context),
    ));
  }
}

class Instagram extends StatefulWidget {
  const Instagram({Key? key}) : super(key: key);

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Instagram"), actions: <Widget>[
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
            icon: const Icon(Icons.arrow_back))
      ]),
      body: social("https://instagram.com/"),
      bottomNavigationBar: bottomBar(2, context),
    ));
  }
}
