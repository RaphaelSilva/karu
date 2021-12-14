import 'package:dartz/dartz.dart';
import 'package:karu/core/usecase/errors/failures.dart';
import 'package:karu/features/domain/entities/product_entity.dart';

abstract class IProductRepository {
  Future<Either<Failure, ProductEntity>> Create(ProductEntity product);
}
