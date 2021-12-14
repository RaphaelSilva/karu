import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:karu/core/usecase/errors/failures.dart';
import 'package:karu/features/domain/entities/product_entity.dart';
import 'package:karu/features/domain/usecases/CreateNewProductUseCase.dart';
import 'package:mockito/mockito.dart';
import 'package:uuid/uuid.dart';
import 'package:karu/features/domain/repositories/product_repository.dart';

class MockProductRepository extends Mock implements IProductRepository {}

void main() {
  late CreateNewProductUseCase usecase;
  late IProductRepository repository;

  setUp(() {
    repository = MockProductRepository();
    usecase = CreateNewProductUseCase(repository);
  });

  final uuid = Uuid();
  final uuidValue = uuid.v4();
  final product = ProductEntity(
    uuid: uuidValue,
    name: 'Product 1',
    description: 'Description 1',
    costPrice: 10,
    imageUrl: 'http://image.com',
  );

  test('should create a new product', () async {
    when(repository.Create(product))
        .thenAnswer((_) async => Right<Failure, ProductEntity>(product));

    final result = await usecase(product);

    expect(result, product);
    verify(repository.Create(product));
    verifyNoMoreInteractions(repository);
  });
}
