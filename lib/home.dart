import 'package:flutter/material.dart';
import 'widgets/_utils.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        drawer: Drawer(
            child: ListView(
          children: [
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/veggi");
              },
              trailing: const Icon(Icons.arrow_right),
              leading: const Image(
                image: AssetImage("images/veggiPizza.png"),
                width: 50,
              ),
              title: const Text("Veggi Pizza"),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/cheesi");
              },
              trailing: const Icon(Icons.arrow_right),
              leading: const Image(
                image: AssetImage("images/CheesiPizza.png"),
                width: 50,
              ),
              title: const Text("Cheesi Pizza"),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/frenchi");
              },
              trailing: const Icon(Icons.arrow_right),
              leading: const Image(
                image: AssetImage("images/frenchFries.png"),
                width: 50,
              ),
              title: const Text("Frenchi Fries"),
            ),
          ],
        )),
        appBar: AppBar(
          title: const Text("WoW Pizza!"),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                topBarButton("Veggi Pizza", context, "/veggi"),
                topBarButton("Cheesi Pizza", context, "/cheesi"),
                topBarButton("Frenchi", context, "/frenchi"),
              ],
            ),
            const Image(image: AssetImage("images/pizzaWall.png")),
            const Text(
              "Hi, I'm the Pizza Assistant, what can I help you order",
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        bottomNavigationBar: bottomBar(0, context),
      )),
    );
  }
}
