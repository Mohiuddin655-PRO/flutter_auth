import 'package:flutter_auth/core/common/responses/response.dart';
import 'package:flutter_auth/feature/domain/repositories/user_repository.dart';

class UserUpdateUseCase {
  final UserRepository repository;

  UserUpdateUseCase({
    required this.repository,
  });

  Future<Response> call({
    required String uid,
    required Map<String, dynamic> map,
  }) async {
    return repository.update(uid, map);
  }
}
