import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:karu/core/bean/realtime.dart';
import 'package:karu/features/data/models/product_model.dart';
import 'package:karu/features/domain/entities/product_entity.dart';

class ProductRealTime implements RealTime<ProductEntity> {
  FirebaseFirestore database;
  final String _path = 'products';
  late CollectionReference collection;

  ProductRealTime({required this.database}) {
    // database.settings = Settings(persistenceEnabled: true);
    collection = database.collection(_path);
  }

  @override
  Future<ProductEntity> add(ProductEntity product) async {
    final model = ProductModel.fromEntity(product);
    final doc = await collection.add(model.toJson());
    model.uuid = doc.id;
    return model;
  }
}
