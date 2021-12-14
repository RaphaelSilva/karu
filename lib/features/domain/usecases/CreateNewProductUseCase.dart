import 'package:karu/core/usecase/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:karu/core/usecase/usecase.dart';
import 'package:karu/features/domain/entities/product_entity.dart';
import 'package:karu/features/domain/repositories/product_repository.dart';
import 'package:karu/features/data/repositories/product_repository.dart';

class CreateNewProductUseCase implements Usecase<ProductEntity, ProductEntity> {
  final IProductRepository repository;

  CreateNewProductUseCase(this.repository);

  @override
  Future<Either<Failure, ProductEntity>> call(product) async {
    return await repository.Create(product);
  }
}
