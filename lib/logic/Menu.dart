import 'Food.dart';
import 'Category.dart';

class Menu{
  List<Food> foods = [
    Food(name: "Cheese Pizza", description: "Pizza full of different kinds of cheese!", categoryId: 1, imgUrl: "assets/images/cheese_pizza.jpg", price: 10.99, id: 1),
    Food(name: "Pepperoni Pizza", description: "Pizza full of pepperoni!", categoryId: 1, imgUrl: "assets/images/pepperoni_pizza.jpg", price: 12.99, id: 2),
    Food(name: "Hawaiian Pizza", description: "Pizza full of ham and pineapple!", categoryId: 1, imgUrl: "assets/images/hawaiian_pizza.jpg", price: 11.99, id: 3),
    Food(name: "Veggie Pizza", description: "Pizza full of veggies!", categoryId: 1, imgUrl: "assets/images/veggie_pizza.jpg", price: 9.99, id: 4),
    Food(name: "Cheese Burger", description: "Burger full of cheese!", categoryId: 2, imgUrl: "assets/images/cheese_burger.jpg", price: 8.99, id: 5),
    Food(name:"Beef Burger", description: "Beefy Burger!", categoryId: 2, imgUrl: "assets/images/beef_burger.jpg", price: 9.99, id: 6),
    Food(name: "Chicken Burger", description: "Chicken Burger!", categoryId: 2, imgUrl: "assets/images/chicken_burger.jpg", price: 9.99, id: 7),
    Food(name: "Veggie Burger", description: "Veggiterian Burger!", categoryId: 2, imgUrl: "assets/images/veggie_burger.jpg", price: 8.99, id: 8),
    Food(name: "Penne Pasta", description: "Pasta with penne!", categoryId: 3, imgUrl: "assets/images/penne_pasta.jpg", price: 9.99, id: 9),
    Food(name: "Spaghetti Pasta", description: "Pasta with spaghetti!", categoryId: 3, imgUrl: "assets/images/spaghetti_pasta.jpg", price: 9.99, id: 10),
    Food(name: "Macaroni Pasta", description: "Pasta with macaroni!", categoryId: 3, imgUrl: "assets/images/macaroni_pasta.jpg", price: 9.99, id: 11),
    Food(name: "Fettuccine Pasta", description: "Pasta with fettuccine!", categoryId: 3, imgUrl: "assets/images/fettuccine_pasta.jpg", price: 9.99, id: 12),
    Food(name: "Caesar Salad", description: "Salad with caesar dressing!", categoryId: 4, imgUrl: "assets/images/caesar_salad.jpg", price: 7.99, id: 13),
    Food(name: "Greek Salad", description: "Salad with greek dressing!", categoryId: 4, imgUrl: "assets/images/greek_salad.jpg", price: 7.99, id: 14),
    Food(name: "Taco Salad", description: "Salad with taco dressing!", categoryId: 4, imgUrl: "assets/images/taco_salad.jpg", price: 7.99, id: 15),
    Food(name: "Fruit Salad", description: "Salad with fruit!", categoryId: 4, imgUrl: "assets/images/fruit_salad.jpg", price: 7.99, id: 16),
    Food(name: "Apple Pie", description: "Pie with apple!", categoryId: 5, imgUrl: "assets/images/apple_pie.jpg", price: 5.99, id: 17),
    Food(name: "Pumpkin Pie", description: "Pie with pumpkin!", categoryId: 5, imgUrl: "assets/images/pumpkin_pie.jpg", price: 5.99, id: 18),
    Food(name: "Chocolate Cake", description: "Cake with chocolate!", categoryId: 5, imgUrl: "assets/images/chocolate_cake.jpg", price: 5.99, id: 19),
    Food(name: "Vanilla Cake", description: "Cake with vanilla!", categoryId: 5, imgUrl: "assets/images/vanilla_cake.jpg", price: 5.99, id: 20),
    Food(name: "Coke", description: "Coke!", categoryId: 6, imgUrl: "assets/images/coke.jpg", price: 2.99, id: 21),
    Food(name: "Sprite", description: "Sprite!", categoryId: 6, imgUrl: "assets/images/sprite.jpg", price: 2.99, id: 22),
    Food(name: "Fanta", description: "Fanta!", categoryId: 6, imgUrl: "assets/images/fanta.jpg", price: 2.99, id: 23),
    Food(name: "Water", description: "Water!", categoryId: 6, imgUrl: "assets/images/water.jpg", price: 2.99, id: 24),

  ];

  List<Category> categories = [
    Category(name: "Pizza", imgUrl: "assets/images/pizza.jpg", id: 1),
    Category(name: "Burger", imgUrl: "assets/images/burger.jpg", id: 2),
    Category(name: "Pasta", imgUrl: "assets/images/pasta.jpg", id: 3),
    Category(name: "Salad", imgUrl: "assets/images/salad.jpg", id: 4),
    Category(name: "Dessert", imgUrl: "assets/images/dessert.jpg", id: 5),
    Category(name: "Drinks", imgUrl: "assets/images/drinks.jpg", id: 6),
  ];

  List<Food> getMenuByCategoryId(int categoryId){
    return this.foods.where((e) => e.categoryId == categoryId).toList();
  }
}