import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_todo/infrastructure/repositories/todo.dart';
import 'package:my_todo/presentation/pages/todo/controller/listup_todo_controller.dart';
import 'package:my_todo/provider/current_user/current_user_controller.dart';
import 'package:my_todo/routing/router_path.dart';

class TodoView extends HookConsumerWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoListProvider = ref.watch(listupToDoController);
    final userProvider = ref.watch(currentUserProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo一覧'),
      ),
      body: todoListProvider.when(
        loading: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        error: (error, stackTrace) => const SizedBox(),
        data: (todos) => RefreshIndicator.adaptive(
          onRefresh: () async {
            final _ = ref.refresh(listupToDoController);
          },
          child: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (c, index) {
              final todo = todos[index];
              return Dismissible(
                key: Key(todo.todoId.toString()),
                onDismissed: (direction) async {
                  if (direction == DismissDirection.startToEnd) {
                    await ref.read(todoRepositoryProvider).complete(
                          userProvider.user!.uid,
                          todo.todoId,
                        );
                    final _ = ref.refresh(listupToDoController);
                  }
                },
                child: Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    title: Text(todo.title),
                    subtitle: Text(todo.description),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () async {
                        await ref.read(todoRepositoryProvider).delToDo(
                              userProvider.user!.uid,
                              todo.todoId,
                            );
                        final _ = ref.refresh(listupToDoController);
                      },
                    ),
                    onTap: () => context.go(
                      RouterPath.todoDetailPath,
                      extra: todo.todoId,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go(RouterPath.todoAddPath);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
