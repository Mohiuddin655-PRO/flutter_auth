import '../../../../core/common/responses/response.dart';
import '../../entities/credential.dart';
import '../../repositories/auth_repository.dart';

class IsSignInUseCase {
  final AuthRepository repository;

  IsSignInUseCase({
    required this.repository,
  });

  Future<bool> call() async {
    return repository.isSignIn();
  }
}
