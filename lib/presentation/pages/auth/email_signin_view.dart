import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_todo/presentation/pages/auth/controller/auth_controller.dart';
import 'package:my_todo/presentation/pages/auth/widget/round_rect_button.dart';
import 'package:my_todo/presentation/pages/auth/widget/text_form.dart';
import 'package:my_todo/routing/router_path.dart';

class EmailSignInView extends HookConsumerWidget {
  const EmailSignInView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'LOGO',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 54),
                TextForm(
                  title: 'メールアドレス',
                  onChanged: (value) =>
                      ref.read(authController.notifier).setEmail(value),
                ),
                const SizedBox(height: 12),
                TextForm(
                  title: 'パスワード',
                  onChanged: (value) =>
                      ref.read(authController.notifier).setPassword(value),
                  isPasswordForm: true,
                ),
                const SizedBox(height: 18),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: RoundRectButton(
                    title: 'ログイン',
                    onPressed: () async {
                      try {
                        await ref
                            .read(authController.notifier)
                            .signInWithEmail();
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
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: RoundRectButton(
                    title: 'アカウント作成',
                    onPressed: () {
                      context.goNamed(RouterPath.signUp);
                    },
                  ),
                ),
                const SizedBox(height: 12),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'パスワードをお忘れの方はこちら',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
