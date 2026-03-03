import 'package:dartz/dartz.dart';
import '../error/errors.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params parans);
}

class NoParams {}
