import 'package:flutter/material.dart';
import 'category_widget.dart';
import 'logic/Menu.dart';

class Categories extends StatelessWidget {
  var menu = Menu();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        backgroundColor: Color.fromARGB(255, 249, 142, 84),
      ),
      body: ListView(
        children: this.menu.categories.map((cat) => CategoryWidget(category: cat)).toList(),
      )
    );
  }
}