import 'package:karu/core/bean/entity.dart';

class ProductEntity extends Entity {
  final String? uuid;
  final String name;
  final String description;
  final String imageUrl;
  final double costPrice;

  ProductEntity({
    this.uuid,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.costPrice,
  });
}
