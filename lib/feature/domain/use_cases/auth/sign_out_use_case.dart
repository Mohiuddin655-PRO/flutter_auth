import 'package:flutter_auth/core/common/responses/response.dart';
import 'package:flutter_auth/feature/domain/repositories/auth_repository.dart';

class SignOutUseCase {
  final AuthRepository repository;

  SignOutUseCase({
    required this.repository,
  });

  Future<Response> call() async {
    return repository.signOut();
  }
}
