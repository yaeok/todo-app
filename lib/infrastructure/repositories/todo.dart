import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_todo/domain/entity/todo.dart';
import 'package:my_todo/domain/repositories/todo.dart';
import 'package:my_todo/infrastructure/firestore/firestore.dart';

class IToDoRepository extends ToDoRepository {
  IToDoRepository();

  final firestore = FirebaseFirestore.instance;
  final userCol = Firestore.users;

  @override
  Future<void> addToDo(String userId, ToDo recTodo) async {
    final newDoc = userCol.doc();
    // copyWithでtodoIdを設定
    ToDo updTodo = recTodo.copyWith(todoId: newDoc.id);
    await userCol
        .doc(userId)
        .collection('todos')
        .doc(newDoc.id)
        .set(updTodo.toJson());
  }

  @override
  Future<void> delToDo(String userId, String todoId) async {
    await userCol.doc(userId).collection('todos').doc(todoId).delete();
  }

  @override
  Future<List<ToDo>> getToDoList(String userId) async {
    final todoList = await userCol
        .doc(userId)
        .collection('todos')
        .where('isCompleted', isEqualTo: false)
        .get();
    return todoList.docs.map((e) => ToDo.fromJson(e.data())).toList();
  }

  @override
  Future<void> updToDo(String userId, ToDo recTodo) async {
    await userCol
        .doc(userId)
        .collection('todos')
        .doc(recTodo.todoId)
        .update(recTodo.toJson());
  }

  @override
  Future<ToDo> getToDo({required userId, required String todoId}) async {
    final todo =
        await userCol.doc(userId).collection('todos').doc(todoId).get();
    return ToDo.fromJson(todo.data()!);
  }

  @override
  Future<void> complete(String userId, String todoId) async {
    await userCol
        .doc(userId)
        .collection('todos')
        .doc(todoId)
        .update({'isCompleted': true});
  }
}

final todoRepositoryProvider = Provider<IToDoRepository>(
  (ref) => IToDoRepository(),
);
