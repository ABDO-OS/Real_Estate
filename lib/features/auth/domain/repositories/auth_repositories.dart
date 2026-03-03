import 'package:dartz/dartz.dart';
import 'package:real_estate/core/error/errors.dart';
import 'package:real_estate/features/auth/domain/entities/userentities.dart';

abstract class AuthRepositories {
  Future<Either<Failure, UserEntity>> signUp({
    required String name,
    required String email,
    required String password,
    required String role,
  });

  Future<Either<Failure, UserEntity>> login({
    required String email,
    required String password,
  });
}
