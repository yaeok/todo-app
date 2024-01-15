import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_todo/domain/entity/auth.dart';
import 'package:my_todo/domain/repositories/auth.dart';
import 'package:my_todo/domain/repositories/user.dart';
import 'package:my_todo/infrastructure/repositories/auth.dart';
import 'package:my_todo/infrastructure/repositories/user.dart';

class AuthController extends StateNotifier<AuthState> {
  AuthController({
    required this.authRepository,
    required this.userRepository,
  }) : super(
          const AuthState(
            email: '',
            password: '',
          ),
        );

  AuthRepository authRepository;
  UserRepository userRepository;

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  Future<void> signUpWithEmail() async {
    try {
      final authenticationDetails =
          Auth(email: state.email, password: state.password);

      await authRepository.signUpWithEmail(authenticationDetails);
    } catch (error) {
      // エラーハンドリングをここに追加します
      print("Sign up failed: $error");
    }
  }

  // メールアドレスサインイン
  Future<void> signInWithEmail() async {
    try {
      final authenticationDetails =
          Auth(email: state.email, password: state.password);
      await authRepository.signInWithEmail(authenticationDetails);
    } catch (error) {
      // エラーハンドリングをここに追加します
      print("Sign in failed: $error");
    }
  }

  Future<void> signOut() async {
    await authRepository.signOut();
  }
}

final authController = StateNotifierProvider<AuthController, AuthState>(
  (ref) => AuthController(
    authRepository: ref.watch(authRepositoryProvider),
    userRepository: ref.watch(userRepositoryProvider),
  ),
);

class AuthState {
  const AuthState({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  AuthState copyWith({
    String? email,
    String? password,
  }) {
    return AuthState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
