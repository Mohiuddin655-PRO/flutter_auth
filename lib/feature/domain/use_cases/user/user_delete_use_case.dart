import 'package:flutter_auth/core/common/responses/response.dart';
import 'package:flutter_auth/feature/domain/repositories/user_repository.dart';

class UserDeleteUseCase {
  final UserRepository repository;

  UserDeleteUseCase({
    required this.repository,
  });

  Future<Response> call({
    required String uid,
  }) async {
    return repository.delete(uid);
  }
}
