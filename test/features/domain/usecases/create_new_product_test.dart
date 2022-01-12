import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:karu/features/domain/entities/product_entity.dart';
import 'package:karu/features/domain/usecases/create.new.product.usecase.dart';
import 'package:mockito/mockito.dart';
import 'package:uuid/uuid.dart';
import 'package:karu/features/domain/repositories/product_repository.dart';
//modified
import 'package:mockito/annotations.dart';

import 'create_new_product_test.mocks.dart';

@GenerateMocks([IProductRepository])
void main() {
  late CreateNewProductUseCase usecase;
  late IProductRepository repository;

  setUp(() {
    repository = MockIProductRepository();
    usecase = CreateNewProductUseCase(repository);
  });

  const uuid = Uuid();
  final uuidValue = uuid.v4();
  final product = ProductEntity(
    uuid: uuidValue,
    name: 'Product 1',
    description: 'Description 1',
    costPrice: 10,
    imageUrl: 'http://image.com',
  );

  test('should create a new product', () async {
    when(repository.create(item: product))
        .thenAnswer((_) async => Right(product));

    final result = await usecase(product);

    expect(result, Right(product));
    verify(repository.create(item: product)).called(1);
    verifyNoMoreInteractions(repository);
  });
}
