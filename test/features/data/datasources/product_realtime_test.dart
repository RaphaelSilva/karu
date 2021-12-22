import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:karu/features/data/datasources/product_realtime.dart';
import 'package:karu/features/domain/entities/product_entity.dart';

void main() {
  late ProductRealTime productRealTime;

  setUp(() async {
    productRealTime = ProductRealTime(database: FakeFirebaseFirestore());
  });

  final product = ProductEntity(
    name: 'Product 1',
    description: 'Description 1',
    costPrice: 10,
    imageUrl: 'http://image.com',
  );

  test('should create a new product', () async {
    final result = await productRealTime.add(product);
    expect(result.uuid, isNotNull);
  });
}
