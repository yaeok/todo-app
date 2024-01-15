// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_todo/domain/entity/todo.dart';

part 'register_todo_state.freezed.dart';

@freezed
class RegisterToDoState with _$RegisterToDoState {
  const factory RegisterToDoState({
    required ToDo recTodo,
  }) = _RegisterToDoState;
  const RegisterToDoState._();
}
