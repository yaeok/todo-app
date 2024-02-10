import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_todo/presentation/pages/account/account_view.dart';
import 'package:my_todo/presentation/pages/account/update/account_update_view.dart';
import 'package:my_todo/presentation/pages/auth/email_signin_view.dart';
import 'package:my_todo/presentation/pages/auth/email_signup_view.dart';
import 'package:my_todo/presentation/pages/todo/add/todo_add_view.dart';
import 'package:my_todo/presentation/pages/todo/detail/todo_detail_view.dart';
import 'package:my_todo/presentation/pages/todo/todo_list_view.dart';
import 'package:my_todo/presentation/pages/todo/update/todo_update_view.dart';
import 'package:my_todo/provider/auth_provider.dart';
import 'package:my_todo/routing/router_path.dart';
import 'package:my_todo/routing/scaffold_with_nav_bar.dart';

final rootNavigatorKeyProvider = Provider(
  (ref) => GlobalKey<NavigatorState>(debugLabel: 'root'),
);

final sectionNavigatorKeyProvider = Provider(
  (ref) => GlobalKey<NavigatorState>(debugLabel: 'section'),
);

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    final rootNavigatorKey = ref.watch(rootNavigatorKeyProvider);

    final authState = ref.watch(authProvider);

    return GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: RouterPath.todo,
      routes: [
        // メールアドレスサインアップ画面
        GoRoute(
          path: RouterPath.signUp,
          builder: (context, state) => const EmailSignUpView(),
        ),
        // メールアドレスサインイン画面
        GoRoute(
          path: RouterPath.signIn,
          builder: (context, state) => const EmailSignInView(),
        ),
        // BottomNavBarを表示するルートブランチ
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return ScaffoldWithNavBar(navigationShell: navigationShell);
          },
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: RouterPath.todo,
                  builder: (context, state) => const TodoView(),
                  routes: [
                    GoRoute(
                      path: RouterPath.todoDetail,
                      builder: (context, state) => TodoDetailView(
                        state.extra as String,
                      ),
                      routes: [
                        GoRoute(
                          path: RouterPath.todoEdit,
                          builder: (context, state) => const TodoUpdateView(),
                        ),
                      ],
                    ),
                    GoRoute(
                      path: RouterPath.todoAdd,
                      pageBuilder: (context, state) => const MaterialPage(
                        fullscreenDialog: true,
                        child: TodoAddView(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: RouterPath.account,
                  builder: (context, state) => const AccountView(),
                  routes: [
                    GoRoute(
                      path: RouterPath.accountDetail,
                      builder: (context, state) => const AccountUpdateView(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
      redirect: (BuildContext context, GoRouterState state) {
        final isAuth = authState.value != null;

        if (!isAuth && state.fullPath != RouterPath.signIn) {
          return RouterPath.signUp;
        } else if (!isAuth && state.fullPath != RouterPath.signUp) {
          return RouterPath.signIn;
        }

        final isState =
            state.path == RouterPath.signIn || state.path == RouterPath.signUp;

        // pathがauth, signIn, signUp, null以外の場合は何もせず、initial locationに遷移する
        if (!isState) {
          return null;
        }
      },
    );
  },
);
