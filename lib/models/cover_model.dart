class CoverModel {
  final String image;
  final String name;

  CoverModel({required this.image, required this.name});

  static List<CoverModel> covers = [
    CoverModel(image: 'assets/product/Rectangle440.png', name: 'text'),
    CoverModel(image: 'assets/cover/image.png', name: 'fdrf'),
    CoverModel(image: 'assets/product/Rectangle440.png', name: 'text'),
  ];
}
