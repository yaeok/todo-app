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
                startDateTime: DateTime.now(),
                endDateTime: DateTime.now(),
                isAllDay: false,
                isDone: false),
          ),
        );

  void setTitle(String title) {
    final todo = ToDo(
        todoId: state.recTodo.todoId,
        title: title,
        description: state.recTodo.description,
        startDateTime: state.recTodo.startDateTime,
        endDateTime: state.recTodo.endDateTime,
        isAllDay: state.recTodo.isAllDay,
        isDone: state.recTodo.isDone);
    state = state.copyWith(recTodo: todo);
  }

  void setDescription(String description) {
    final todo = ToDo(
        todoId: state.recTodo.todoId,
        title: state.recTodo.title,
        description: description,
        startDateTime: state.recTodo.startDateTime,
        endDateTime: state.recTodo.endDateTime,
        isAllDay: state.recTodo.isAllDay,
        isDone: state.recTodo.isDone);
    state = state.copyWith(recTodo: todo);
  }

  void setStartDateTime(DateTime startDateTime) {
    final todo = ToDo(
        todoId: state.recTodo.todoId,
        title: state.recTodo.title,
        description: state.recTodo.description,
        startDateTime: startDateTime,
        endDateTime: state.recTodo.endDateTime,
        isAllDay: state.recTodo.isAllDay,
        isDone: state.recTodo.isDone);
    state = state.copyWith(recTodo: todo);
  }

  void setEndDateTime(DateTime endDateTime) {
    final todo = ToDo(
        todoId: state.recTodo.todoId,
        title: state.recTodo.title,
        description: state.recTodo.description,
        startDateTime: state.recTodo.startDateTime,
        endDateTime: endDateTime,
        isAllDay: state.recTodo.isAllDay,
        isDone: state.recTodo.isDone);
    state = state.copyWith(recTodo: todo);
  }

  void setIsAllDay(bool isAllDay) {
    final todo = ToDo(
        todoId: state.recTodo.todoId,
        title: state.recTodo.title,
        description: state.recTodo.description,
        startDateTime: state.recTodo.startDateTime,
        endDateTime: state.recTodo.endDateTime,
        isAllDay: isAllDay,
        isDone: state.recTodo.isDone);
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
