import 'package:flutter_auth/core/common/responses/response.dart';
import 'package:flutter_auth/feature/domain/repositories/user_repository.dart';

class UserGetUseCase {
  final UserRepository repository;

  UserGetUseCase({
    required this.repository,
  });

  Future<Response> call({
    required String uid,
  }) async {
    return repository.get(uid);
  }
}
