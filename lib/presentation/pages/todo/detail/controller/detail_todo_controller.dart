import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_todo/domain/entity/todo.dart';
import 'package:my_todo/infrastructure/repositories/todo.dart';
import 'package:my_todo/provider/current_user/current_user_controller.dart';

class ToDoDetailNotifier extends AutoDisposeFamilyAsyncNotifier<ToDo, String> {
  Future<ToDo> _fetchTodo(String userId, String todoId) async {
    final response = await ref
        .watch(todoRepositoryProvider)
        .getToDo(userId: userId, todoId: todoId);
    return response;
  }

  @override
  Future<ToDo> build(String arg) async {
    final userProvider = ref.watch(currentUserProvider);
    return _fetchTodo(userProvider.user!.uid, arg);
  }

  Future<void> complete(String userId, String todoId) async {
    await ref.watch(todoRepositoryProvider).complete(userId, todoId);
  }
}

final detailTodoController = AsyncNotifierProvider.autoDispose
    .family<ToDoDetailNotifier, ToDo, String>(ToDoDetailNotifier.new);
