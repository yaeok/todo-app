import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_todo/domain/entity/user.dart';
import 'package:my_todo/domain/repositories/user.dart';
import 'package:my_todo/infrastructure/repositories/user.dart';
import 'package:my_todo/provider/auth_provider.dart';
import 'package:my_todo/provider/current_user/current_user_state.dart';

// class CurrentUserProvider extends AutoDisposeAsyncNotifier<CurrentUserState> {
//   Future<CurrentUserState> set(String uid) async {
//     final response = CurrentUserState(
//       user: await ref.watch(userRepositoryProvider).get(userId: uid),
//     );
//     return response;
//   }

//   @override
//   Future<CurrentUserState> build() {
//     final authState = ref.watch(authProvider);
//     return set(authState.value!.uid);
//   }
// }

// final currentUserProvider =
//     AsyncNotifierProvider.autoDispose<CurrentUserProvider, CurrentUserState>(
//   CurrentUserProvider.new,
// );

class CurrentUserProvider extends StateNotifier<CurrentUserState> {
  CurrentUserProvider({
    required this.userRepository,
  }) : super(
          CurrentUserState(
            user: User(
              uid: '',
              email: '',
              username: '',
              updatedAt: DateTime.now(),
              createdAt: DateTime.now(),
            ),
          ),
        );

  UserRepository userRepository;

  Future<void> set(String? uid) async {
    final user = await userRepository.get(userId: uid);
    state = state.copyWith(user: user);
  }
}

final currentUserProvider =
    StateNotifierProvider<CurrentUserProvider, CurrentUserState>(
  (ref) => CurrentUserProvider(
    userRepository: ref.watch(userRepositoryProvider),
  ),
);
