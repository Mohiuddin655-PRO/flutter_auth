import 'package:flutter_auth/core/common/responses/response.dart';
import 'package:flutter_auth/feature/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<Response> create(UserEntity entity);

  Future<Response> update(String uid, Map<String, dynamic> map);

  Future<Response> delete(String uid);

  Future<Response> get(String uid);

  Future<Response> gets();

  Future<Response> save(UserEntity entity);

  Future<Response> remove();

  Future<Response> backup();
}
