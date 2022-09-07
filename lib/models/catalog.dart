class Item {
  final String id;
  final String name;
  final String desc;
  final String color;
  final String image;
  final num price;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.color,
      required this.image,
      required this.price});
}

final products = [
  Item(
      id: "101",
      name: "Iphone 12 pro",
      desc: "Apple 12th gen",
      color: "#33505a",
      image:
          "https://cdn.shopify.com/s/files/1/1706/9177/products/iphone-12-pro-gold-hero_83db8e45-3529-44a1-aa22-50e17d0623c3.png?v=1613634994",
      price: 999)
];
