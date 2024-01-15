import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_todo/presentation/widget/base_dialog.dart';
import 'package:my_todo/theme/color.dart';

class SignOutDialog extends HookConsumerWidget {
  const SignOutDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseDialog(
      widget: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 100,
        ),
        child: Column(
          children: [
            const Text(
              "アプリから\nログアウトしますか？",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: ThemeColor.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 60),
            SizedBox(
              height: 50,
              width: 141,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('はい'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 141,
              child: OutlinedButton(
                onPressed: () => {
                  Navigator.pop(context, true),
                },
                child: const Text('いいえ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
