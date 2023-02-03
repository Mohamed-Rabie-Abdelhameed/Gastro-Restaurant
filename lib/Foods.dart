import 'logic/Food.dart';
import 'logic/Menu.dart';
import 'logic/Category.dart';
import 'package:flutter/material.dart';
import 'food_widget.dart';

class Foods extends StatelessWidget {
  Category category;
  Menu data = Menu();
  Foods({required this.category});

  @override
  Widget build(BuildContext context) {
    List<Food> selected = data.getMenuByCategoryId(this.category.id);
    print(selected);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 249, 142, 84),
        title: Text(category.name),
      ),
      body: (selected.length == 0)
          ? Center(
              child: Text("Loading your meals......."),
            )
          : ListView(
              children: selected.map((item) => FoodWidget(meal: item)).toList(),
            ),
    );
  }
}
