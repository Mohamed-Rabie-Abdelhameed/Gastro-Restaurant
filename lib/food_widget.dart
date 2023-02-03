import 'logic/Food.dart';
import 'package:flutter/material.dart';

class FoodWidget extends StatelessWidget {
  Food meal;
  FoodWidget({required this.meal});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      meal.name,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("\$" + meal.price.toString(),
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ],
              )
            ]),
            width: 100,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(meal.imgUrl),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.15), BlendMode.darken),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ));
  }
}
