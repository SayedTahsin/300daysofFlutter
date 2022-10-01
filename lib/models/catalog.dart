// ignore_for_file: null_closures

class CatalogModel {
  static List<Item> items = [];

  static Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  static Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
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
  factory Item.fromMap(Map<String, dynamic> map) {
    //! takes data from map and convertin to Item Class
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      color: map["color"],
      image: map["image"],
      price: map["price"],
    );
  }
  toMap() => {
        //! deos opposite of FromMap
        "id": id,
        "name": name,
        "desc": desc,
        "color": color,
        "image": image,
        "price": price,
      };
}
