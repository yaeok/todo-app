import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_todo/domain/entity/user.dart';
import 'package:my_todo/domain/repositories/user.dart';
import 'package:my_todo/infrastructure/firestore/firestore.dart';

class IUserRepository extends UserRepository {
  IUserRepository();

  final firestore = FirebaseFirestore.instance;
  final userCol = Firestore.users;

  @override
  Future<User> get({required userId}) async {
    final user = await userCol.doc(userId).get();
    return User.fromJson(user.data()!);
  }

  @override
  Future<void> update(String userId, User recUser) async {
    await userCol.doc(userId).update(recUser.toJson());
  }
}

final userRepositoryProvider = Provider<IUserRepository>(
  (ref) => IUserRepository(),
);
