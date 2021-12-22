import 'package:karu/features/domain/entities/product_entity.dart';

class ProductModel implements ProductEntity {
  @override
  String? uuid;
  @override
  String name;
  @override
  String description;
  @override
  String imageUrl;
  @override
  double costPrice;

  ProductModel({
    this.uuid,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.costPrice,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        uuid: json["uuid"],
        name: json["name"],
        description: json["description"],
        imageUrl: json["imageUrl"],
        costPrice: json["costPrice"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "uuid": uuid,
        "name": name,
        "description": description,
        "imageUrl": imageUrl,
        "costPrice": costPrice,
      };

  factory ProductModel.fromEntity(ProductEntity product) => ProductModel(
        uuid: product.uuid ?? '',
        name: product.name,
        description: product.description,
        imageUrl: product.imageUrl,
        costPrice: product.costPrice,
      );
}
