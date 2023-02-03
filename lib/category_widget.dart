import 'package:flutter/material.dart';
import 'Foods.dart';
import 'logic/Category.dart';

class CategoryWidget extends StatelessWidget {
  Category category;
  CategoryWidget({required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Foods(category: this.category)))
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
            color: Colors.transparent,
            shadowColor: Colors.transparent,
            child: Container(
              child: Center(
                child: Text(
                  this.category.name,
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(this.category.imgUrl),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken),
                ),
                borderRadius: BorderRadius.circular(25),
              ),
            )),
      ),
    );
  }
}
