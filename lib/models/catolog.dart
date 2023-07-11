class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final Products = [
  Item(
      id: "firstone",
      name: "IPhone14",
      desc: "Apple Iphone 14th gen",
      price: 999,
      color: "33505a",
      image: "sdkjfhskdjfb"),
];
