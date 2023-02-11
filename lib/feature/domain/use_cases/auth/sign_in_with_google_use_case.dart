import 'package:flutter_auth/core/common/responses/response.dart';
import 'package:flutter_auth/feature/domain/repositories/auth_repository.dart';

import '../../entities/credential.dart';

class SignInWithGoogleUseCase {
  final AuthRepository repository;

  SignInWithGoogleUseCase({
    required this.repository,
  });

  Future<Response<Credential>> call() async {
    return repository.signInWithGoogle();
  }
}
