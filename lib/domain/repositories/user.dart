import 'package:my_todo/domain/entity/user.dart';

abstract class UserRepository {
  Future<User> get({required userId});
  Future<void> update(String userId, User recUser);
}
