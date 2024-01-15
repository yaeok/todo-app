import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_todo/domain/entity/auth.dart';
import 'package:my_todo/domain/repositories/auth.dart';
import 'package:my_todo/infrastructure/firestore/firestore.dart';

class IAuthRepository extends AuthRepository {
  IAuthRepository();

  final firebaseAuth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;
  final userCol = Firestore.users;

  @override
  Future<void> signUpWithEmail(Auth auth) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: auth.email,
        password: auth.password,
      );
    } catch (e) {
      if (e is FirebaseAuthException) {
        switch (e.code) {
          case "user-not-found":
            throw "user-not-found";
          // Authenticationにアカウントが存在するが、パスワードが違う場合はエラーを返す
          case "wrong-password":
            throw "wrong-password";
          // ログイン失敗が多く続いた場合はエラーを返す
          case "too-many-requests":
            throw "too-many-requests";
          default:
            return;
        }
      }
    }
    final email = firebaseAuth.currentUser!.email;
    final uid = firebaseAuth.currentUser!.uid;
    final userDoc = userCol.doc(uid);

    await userDoc.set({
      'email': email,
      'uid': uid,
      'createdAt': Timestamp.now(),
      'updatedAt': Timestamp.now(),
    });
  }

  @override
  Future<void> signInWithEmail(Auth auth) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: auth.email,
        password: auth.password,
      );
    } catch (e) {
      if (e is FirebaseAuthException) {
        switch (e.code) {
          case "user-not-found":
            throw "user-not-found";
          // Authenticationにアカウントが存在するが、パスワードが違う場合はエラーを返す
          case "wrong-password":
            throw "wrong-password";
          // ログイン失敗が多く続いた場合はエラーを返す
          case "too-many-requests":
            throw "too-many-requests";
          default:
            return;
        }
      }
    }
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }
}

final authRepositoryProvider = Provider<IAuthRepository>(
  (ref) => IAuthRepository(),
);
