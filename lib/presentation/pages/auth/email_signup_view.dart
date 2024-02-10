import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_todo/presentation/pages/auth/controller/auth_controller.dart';
import 'package:my_todo/presentation/pages/auth/widget/round_rect_button.dart';
import 'package:my_todo/presentation/pages/auth/widget/text_form.dart';
import 'package:my_todo/routing/router_path.dart';

class EmailSignUpView extends HookConsumerWidget {
  const EmailSignUpView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('LOGO',
                style: TextStyle(color: Colors.black, fontSize: 15)),
          ),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Align elements in the center
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '新規アカウント作成',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 36),
                  TextForm(
                    title: 'メールアドレス',
                    onChanged: (value) =>
                        ref.read(authController.notifier).setEmail(value),
                  ),
                  const SizedBox(height: 12),
                  TextForm(
                    title: 'パスワード',
                    isPasswordForm: true,
                    onChanged: ((value) =>
                        ref.read(authController.notifier).setPassword(value)),
                  ),
                  const SizedBox(height: 36),
                  RoundRectButton(
                    title: 'アカウントを作成する',
                    onPressed: () async {
                      try {
                        await ref
                            .read(authController.notifier)
                            .signUpWithEmail();
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'invalid-email') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('メールアドレスのフォーマットが正しくありません'),
                            ),
                          );
                        } else if (e.code == 'user-disabled') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('現在指定したメールアドレスは使用できません'),
                            ),
                          );
                        } else if (e.code == 'user-not-found') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('指定したメールアドレスは登録されていません'),
                            ),
                          );
                        } else if (e.code == 'wrong-password') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('パスワードが間違っています'),
                            ),
                          );
                        }
                      }
                    },
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      context.go(RouterPath.signIn);
                    },
                    child: const Text(
                      'アカウントをお持ちの方はこちら',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 65, 36, 36),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
