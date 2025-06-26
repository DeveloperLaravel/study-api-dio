class ProductModel {
  final String image;
  final String name;
  final double price;
  final String description;

  ProductModel({
    required this.image,
    required this.name,
    required this.price,
    required this.description,
  });

  static List<ProductModel> products = [
    ProductModel(
      image: 'assets/product/Frame1.png',
      name: 'October',
      price: 2.1,
      description: 'description1',
    ),
    ProductModel(
      image: 'assets/product/Frame2.png',
      name: 'October',
      price: 2.2,
      description: 'description2',
    ),
    ProductModel(
      image: 'assets/product/Frame3.png',
      name: 'October',
      price: 2.3,
      description: 'description3',
    ),
    ProductModel(
      image: 'assets/product/Frame4.png',
      name: 'October',
      price: 2.4,
      description: 'description4',
    ),
    ProductModel(
      image: 'assets/product/Frame5.png',
      name: 'October',
      price: 2.5,
      description: 'description5',
    ),
    ProductModel(
      image: 'assets/product/Frame6.png',
      name: 'October',
      price: 2.6,
      description: 'description1',
    ),
  ];
}
