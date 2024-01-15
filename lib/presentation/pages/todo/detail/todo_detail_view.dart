import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:my_todo/presentation/pages/todo/detail/controller/detail_todo_controller.dart';
import 'package:my_todo/provider/current_user/current_user_controller.dart';
import 'package:my_todo/theme/color.dart';

class TodoDetailView extends HookConsumerWidget {
  const TodoDetailView(this.todoId, {super.key});
  final String todoId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoDetailProvider = ref.watch(detailTodoController(todoId));
    final userProvider = ref.watch(currentUserProvider);

    return todoDetailProvider.when(
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
      error: (error, stackTrace) => const SizedBox(),
      data: (recTodo) => RefreshIndicator.adaptive(
        onRefresh: () async {
          final _ = ref.refresh(detailTodoController(todoId));
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(recTodo.title),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: ThemeColor.primary,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Text(
                    recTodo.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    color: ThemeColor.primary,
                  ),
                  child: Text(recTodo.description),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text('開始日時'),
                        Text(
                          DateFormat('yyyy-MM-dd')
                              .format(recTodo.startDateTime as DateTime),
                        ),
                        Text(
                          DateFormat('hh:mm')
                              .format(recTodo.startDateTime as DateTime),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text('終了日時'),
                        Text(
                          DateFormat('yyyy-MM-dd')
                              .format(recTodo.endDateTime as DateTime),
                        ),
                        Text(
                          DateFormat('hh:mm')
                              .format(recTodo.endDateTime as DateTime),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                          onPressed: () {}, child: const Text('編集')),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          ref
                              .read(detailTodoController(todoId).notifier)
                              .complete(userProvider.user!.uid, todoId);
                          context.pop();
                        },
                        child: const Text('完了'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
