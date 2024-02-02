class Cart {
  int id;
  String name;
  List<String> image;
  String price;
  bool isChek;

  Cart({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.isChek,
  });

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
        id: json["id"],
        name: json["name"],
        image: List<String>.from(json["image"].map((x) => x)),
        price: json["price"],
        isChek: json["isChek"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": List<dynamic>.from(image.map((x) => x)),
        "price": price,
        "isChek": isChek,
      };
}
