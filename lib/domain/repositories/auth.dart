import 'package:my_todo/domain/entity/auth.dart';

abstract class AuthRepository {
  Future<void> signUpWithEmail(Auth auth);
  Future<void> signInWithEmail(Auth auth);
  Future<void> signOut();
}
