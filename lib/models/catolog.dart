class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "IPhone14",
        desc: "Apple Iphone 14th gen",
        price: 999,
        color: "33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFwGyHa4pCwuoxh1Pn4NTNSviyn-MZESn8fQ&usqp=CAU"),
  ];
}

class Item {
  final int id;
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
