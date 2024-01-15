import 'package:my_todo/domain/entity/todo.dart';

abstract class ToDoRepository {
  Future<List<ToDo>> getToDoList(String userId);
  Future<ToDo> getToDo({required userId, required String todoId});
  Future<void> addToDo(String userId, ToDo recTodo);
  Future<void> updToDo(String userId, ToDo recTodo);
  Future<void> delToDo(String userId, String todoId);
  Future<void> complete(String userId, String todoId);
}
