import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_todo/presentation/pages/todo/add/controller/register_todo_controller.dart';
import 'package:my_todo/presentation/widget/input_area.dart';
import 'package:my_todo/provider/current_user/current_user_controller.dart';

class TodoAddView extends HookConsumerWidget {
  const TodoAddView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userProvider = ref.watch(currentUserProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo登録'),
      ),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        behavior: HitTestBehavior.opaque,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              InputArea(
                label: 'タイトル',
                onChanged: (value) =>
                    ref.watch(registerTodoController.notifier).setTitle(value!),
              ),
              InputArea(
                label: '説明',
                maxLines: 3,
                onChanged: (value) => ref
                    .watch(registerTodoController.notifier)
                    .setDescription(value!),
              ),
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              ElevatedButton(
                onPressed: () {
                  ref
                      .watch(registerTodoController.notifier)
                      .addToDo(userProvider.user!.uid);
                  context.pop();
                },
                child: const Text('新規登録'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
