class Product {
  final String name;
  final String image;
  final double price;
  final double weight;

  const Product(
      {required this.name,
      required this.image,
      required this.price,
      required this.weight});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        name: json['name'],
        image: json['image'],
        price: json['price'],
        weight: json['weight']);
  }

  static List<Product> getProducts() {
    return const <Product>[
      Product(
          name: 'Green Raisins',
          image: "images/dry-green-raisins-2.png",
          price: 100,
          weight: 1.0),
      Product(
          name: 'Apricots',
          image: "images/dry-apricots.JPG",
          price: 100,
          weight: 1.0),
      Product(
          name: 'Black Raisins',
          image: "images/dry-black-raisins.JPG",
          price: 100,
          weight: 1.0),
      Product(
          name: 'Almond',
          image: "images/dry-almond-tr.png",
          price: 100,
          weight: 1.0),
      Product(
          name: 'Pine Nuts',
          image: "images/pine-nuts.png",
          price: 100,
          weight: 1.0),
      Product(
          name: 'Figs',
          image: "images/afghan-dry-figs.png",
          price: 100,
          weight: 1.0),
      Product(
          name: 'Saffron',
          image: "images/saffron.png",
          price: 100,
          weight: 1.0),
    ];
  }
}
