import 'package:flutter_auth/core/common/responses/response.dart';
import 'package:flutter_auth/feature/domain/repositories/user_repository.dart';

class UserBackupUseCase {
  final UserRepository repository;

  UserBackupUseCase({
    required this.repository,
  });

  Future<Response> call() async {
    return repository.backup();
  }
}
