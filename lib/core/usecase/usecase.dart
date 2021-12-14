import 'package:dartz/dartz.dart';

import 'errors/failures.dart';

abstract class Usecase<Output, Input> {
  Future<Either<Failure, Output>> call(Input params);
}

class NoParams {
  @override
  List<Object> get props => [];
}
