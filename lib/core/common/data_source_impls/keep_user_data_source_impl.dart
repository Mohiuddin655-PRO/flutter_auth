import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../feature/domain/entities/user_entity.dart';
import '../data_sources/keep_user_data_source.dart';
import '../responses/response.dart';

class KeepUserDataSourceImpl extends LocalDataSource<UserEntity> {
  final SharedPreferences preferences;
  final key = 'uid';

  KeepUserDataSourceImpl({required this.preferences});

  @override
  Future<Response> insert(UserEntity? entity) async {
    const response = Response();
    final json = jsonEncode(entity?.map ?? '');
    final success = await preferences.setString(key, json);
    if (success) {
      return response.copyWith(isSuccessful: success);
    } else {
      return response.copyWith(message: "User information didn't save!");
    }
  }

  @override
  Future<Response> remove() async {
    const response = Response();
    final completed = await preferences.remove(key);
    if (completed) {
      return response.copyWith(result: true);
    } else {
      return response.copyWith(message: "User information didn't clear!");
    }
  }

  @override
  Future<Response> get() async {
    const response = Response<UserEntity>();
    final model = preferences.getString(key);
    if (model != null) {
      final json = jsonDecode(model);
      final data = UserEntity.from(json);
      return response.copyWith(result: data);
    } else {
      return response.copyWith(message: 'User is not valid!');
    }
  }
}
