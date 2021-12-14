import 'package:karu/features/domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    required String uuid,
    required String name,
    required String description,
    required String imageUrl,
    required double costPrice,
  }) : super(
          uuid: uuid,
          name: name,
          description: description,
          imageUrl: imageUrl,
          costPrice: costPrice,
        );

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
}
