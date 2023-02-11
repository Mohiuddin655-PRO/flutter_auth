import 'package:flutter_auth/core/common/responses/response.dart';
import 'package:flutter_auth/feature/domain/entities/user_entity.dart';
import 'package:flutter_auth/feature/domain/repositories/user_repository.dart';

class UserSaveUseCase {
  final UserRepository repository;

  UserSaveUseCase({
    required this.repository,
  });

  Future<Response> call({
    required UserEntity entity,
  }) async {
    return repository.save(entity);
  }
}
