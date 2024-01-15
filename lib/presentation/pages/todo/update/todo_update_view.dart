import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TodoUpdateView extends HookConsumerWidget {
  const TodoUpdateView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Text('TodoUpdateView'),
    );
  }
}
