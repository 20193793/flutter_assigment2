import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

TextButton topBarButton(
    String content, BuildContext context, String routeName) {
  return TextButton(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))))),
    onPressed: () {
      Navigator.pushNamed(context, routeName);
    },
    child: Text(
      content,
      style: const TextStyle(color: Colors.white),
    ),
  );
}

BottomNavigationBar bottomBar(int index, BuildContext context) {
  String routeName = "";
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.facebook), label: "Facebook"),
      BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: "Instagram"),
    ],
    currentIndex: index,
    backgroundColor: Colors.orange,
    unselectedItemColor: Colors.black54,
    selectedItemColor: Colors.white,
    onTap: (index) {
      switch (index) {
        case 0:
          routeName = "/";
          break;
        case 1:
          routeName = "/facebook";
          break;
        case 2:
          routeName = "/instagram";
          break;
        default:
      }
      Navigator.pushNamed(context, routeName);
    },
  );
}

WebView social(String url) {
  return WebView(
    initialUrl: url,
  );
}

Table pricesTable(String mPrice, String lPrice, String xlPrice) {
  return Table(
    border: const TableBorder(horizontalInside: BorderSide()),
    columnWidths: const <int, TableColumnWidth>{
      0: FixedColumnWidth(40),
      1: FixedColumnWidth(40),
    },
    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    children: <TableRow>[
      TableRow(children: <Widget>[
        TableCell(
            child: Container(
                padding: const EdgeInsets.all(7), child: const Text("M"))),
        TableCell(child: Text(mPrice, textAlign: TextAlign.center)),
      ]),
      TableRow(children: <Widget>[
        TableCell(
            child: Container(
                padding: const EdgeInsets.all(7), child: const Text("L"))),
        TableCell(child: Text(lPrice, textAlign: TextAlign.center)),
      ]),
      TableRow(children: <Widget>[
        TableCell(
            child: Container(
                padding: const EdgeInsets.all(7), child: const Text("XL"))),
        TableCell(child: Text(xlPrice, textAlign: TextAlign.center)),
      ]),
    ],
  );
}
