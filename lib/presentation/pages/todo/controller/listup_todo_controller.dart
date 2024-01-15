import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_todo/domain/entity/todo.dart';
import 'package:my_todo/infrastructure/repositories/todo.dart';
import 'package:my_todo/provider/auth_provider.dart';

class ToDoNotifier extends AutoDisposeAsyncNotifier<List<ToDo>> {
  Future<List<ToDo>> _fetchTodos(String userId) async {
    final response =
        await ref.watch(todoRepositoryProvider).getToDoList(userId);
    return response;
  }

  @override
  Future<List<ToDo>> build() {
    final provider = ref.watch(authProvider);
    return _fetchTodos(provider.value!.uid);
  }
}

final listupToDoController =
    AsyncNotifierProvider.autoDispose<ToDoNotifier, List<ToDo>>(
  ToDoNotifier.new,
);
