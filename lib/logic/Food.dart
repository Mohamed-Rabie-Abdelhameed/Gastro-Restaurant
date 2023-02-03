class Food {
  int id;
  String name;
  String description;
  int categoryId;
  String imgUrl;
  double price;
  Food({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.description,
    required this.imgUrl,
    required this.price
  });
}