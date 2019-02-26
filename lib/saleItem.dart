class SaleItem {
  String itemName;
  String imagePath;
  int price;
  int dPrice;
  SaleItem({this.itemName, this.price, this.dPrice, this.imagePath});
}

List<SaleItem> saleItems = [
  SaleItem(
      itemName: 'Apple Macbook Pro 13 with Touch Bar',
      imagePath: '',
      price: 2000,
      dPrice: 1500),
  SaleItem(
      itemName: 'Apple Macbook Pro 13 with Touch Bar',
      price: 3000,
      dPrice: 2500),
  SaleItem(
      itemName: 'Apple Macbook Pro 13 with Touch Bar',
      price: 3000,
      dPrice: 2500),
  SaleItem(
      itemName: 'Apple Macbook Pro 13 with Touch Bar',
      price: 3000,
      dPrice: 2500),
  SaleItem(
      itemName: 'Apple Macbook Pro 13 with Touch Bar',
      price: 3000,
      dPrice: 2500),
];
