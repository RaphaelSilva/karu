import 'package:karu/features/domain/entities/entity.dart';

class ProductEntity extends Entity {
  final String uuid;
  final String name;
  final String description;
  final String imageUrl;
  final double costPrice;

  ProductEntity({
    required this.uuid,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.costPrice,
  });
}
