import 'package:flutter/material.dart';
import 'widgets/_utils.dart';

class Veggi extends StatelessWidget {
  const Veggi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text("Veggi Pizza"),
            backgroundColor: Colors.orange,
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  icon: const Icon(Icons.arrow_back))
            ]),
        body: Center(
          child: Column(children: [
            const Image(image: AssetImage("images/veggiPizza.png")),
            pricesTable("12", "20", "45"),
          ]),
        ),
        bottomNavigationBar: bottomBar(0, context),
      ),
    ));
  }
}

class Cheesi extends StatelessWidget {
  const Cheesi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text("Cheesi Pizza"),
            backgroundColor: Colors.orange,
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  icon: const Icon(Icons.arrow_back))
            ]),
        body: Center(
          child: Column(children: [
            const Image(image: AssetImage("images/CheesiPizza.png")),
            pricesTable("12", "20", "45"),
          ]),
        ),
        bottomNavigationBar: bottomBar(0, context),
      ),
    ));
  }
}

class Frenchi extends StatelessWidget {
  const Frenchi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text("Frenchi"),
            backgroundColor: Colors.orange,
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  icon: const Icon(Icons.arrow_back))
            ]),
        body: Center(
          child: Column(children: [
            const Image(image: AssetImage("images/frenchFries.png")),
            pricesTable("12", "20", "45"),
          ]),
        ),
        bottomNavigationBar: bottomBar(0, context),
      ),
    ));
  }
}
