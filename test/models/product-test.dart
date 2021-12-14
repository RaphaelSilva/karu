import 'package:flutter_test/flutter_test.dart';
import 'package:karu/features/data/models/product_model.dart';
import 'package:uuid/uuid.dart';

void main() {
  test('should instance a product', () async {
    final uuid = Uuid();
    final uuidValue = uuid.v4();
    final product = ProductModel(
        uuid: uuidValue,
        name: 'Product 1',
        description: 'Description 1',
        imageUrl:
            'https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png',
        costPrice: 10.0);
    expect(product.uuid, uuidValue);
    expect(product.name, 'Product 1');
    expect(product.description, 'Description 1');
    expect(product.imageUrl,
        'https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png');
    expect(product.costPrice, 10.0);
  });
}
