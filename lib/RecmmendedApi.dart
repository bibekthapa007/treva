class Item {
  String name;
  String imagePath;
  int price;
  int sales;
  double rating;
  Item(this.name, this.price, this.imagePath, this.rating, this.sales);
}

List<Item> recommendedItems = [
  Item("Firrona Skrit!", 10, 'assets/images/skirt.jpg', 4.8, 932),
  Item("Pasminna Sahwal!", 10, 'assets/images/shawal.jpg', 4.8, 932),
  Item("Women Jacket!", 10, 'assets/images/jacket.jpeg', 4.8, 932),
  Item("Shirt and Pant!", 10, 'assets/images/pant.jpg', 4.8, 932),
];
