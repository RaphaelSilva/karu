import 'package:dartz/dartz.dart';
import 'package:karu/core/usecase/errors/failures.dart';

abstract class IRepository<T> {
  Future<Either<Failure, T>> create({required T item});
}
