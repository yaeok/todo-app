import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AccountUpdateView extends HookConsumerWidget {
  const AccountUpdateView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text('AccountUpdateView'),
    );
  }
}
