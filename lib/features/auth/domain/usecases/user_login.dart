import 'package:dartz/dartz.dart';
import 'package:real_estate/core/error/errors.dart';
import 'package:real_estate/core/usecase/usecase.dart';
import 'package:real_estate/features/auth/domain/entities/userentities.dart';
import 'package:real_estate/features/auth/domain/repositories/auth_repositories.dart';

class UserLogin implements UseCase<UserEntity, LoginParams> {
  final AuthRepositories repositories;
  UserLogin(this.repositories);

  @override
  Future<Either<Failure, UserEntity>> call(LoginParams params) async {
    return await repositories.login(
      email: params.email,
      password: params.password,
    );
  }
}

class LoginParams {
  final String email;
  final String password;
  LoginParams({required this.email, required this.password});
}
