import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_todo/domain/entity/todo.dart';
import 'package:my_todo/domain/repositories/todo.dart';
import 'package:my_todo/infrastructure/repositories/todo.dart';
import 'package:my_todo/presentation/pages/todo/add/controller/register_todo_state.dart';

class RegisterToDoController extends StateNotifier<RegisterToDoState> {
  RegisterToDoController({required this.todoRepository})
      : super(
          RegisterToDoState(
            recTodo: ToDo(
              todoId: '',
              title: '',
              description: '',
              isCompleted: false,
              completedAt: null,
              isActive: false,
              createdAt: DateTime.now(),
              updatedAt: null,
              deletedAt: null,
            ),
          ),
        );

  void setTitle(String title) {
    final todo = ToDo(
      todoId: state.recTodo.todoId,
      title: title,
      description: state.recTodo.description,
      isCompleted: state.recTodo.isCompleted,
      completedAt: state.recTodo.completedAt,
      isActive: state.recTodo.isActive,
      createdAt: state.recTodo.createdAt,
      updatedAt: state.recTodo.updatedAt,
      deletedAt: state.recTodo.deletedAt,
    );
    state = state.copyWith(recTodo: todo);
  }

  void setDescription(String description) {
    final todo = ToDo(
      todoId: state.recTodo.todoId,
      title: state.recTodo.title,
      description: description,
      isCompleted: state.recTodo.isCompleted,
      completedAt: state.recTodo.completedAt,
      isActive: state.recTodo.isActive,
      createdAt: state.recTodo.createdAt,
      updatedAt: state.recTodo.updatedAt,
      deletedAt: state.recTodo.deletedAt,
    );
    state = state.copyWith(recTodo: todo);
  }

  Future<void> addToDo(String uid) async {
    await todoRepository.addToDo(
      uid,
      state.recTodo,
    );
  }

  ToDoRepository todoRepository;
}

final registerTodoController =
    StateNotifierProvider<RegisterToDoController, RegisterToDoState>(
  (ref) => RegisterToDoController(
    todoRepository: ref.watch(todoRepositoryProvider),
  ),
);
