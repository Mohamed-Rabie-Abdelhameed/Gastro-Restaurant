import 'package:flutter/material.dart';
import 'Categories.dart';
import 'Home.dart';

void main() {
  runApp(App());
}


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "category": (context) => Categories(),
      },
    );
  }
}
