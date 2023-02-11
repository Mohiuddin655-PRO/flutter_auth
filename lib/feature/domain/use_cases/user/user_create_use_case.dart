import 'package:flutter_auth/core/common/responses/response.dart';
import 'package:flutter_auth/feature/domain/entities/user_entity.dart';
import 'package:flutter_auth/feature/domain/repositories/user_repository.dart';

class UserCreateUseCase {
  final UserRepository repository;

  UserCreateUseCase({
    required this.repository,
  });

  Future<Response> call({
    required UserEntity entity,
  }) async {
    return repository.create(entity);
  }
}
