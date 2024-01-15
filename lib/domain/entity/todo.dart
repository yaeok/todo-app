import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class ToDo with _$ToDo {
  const factory ToDo({
    required String todoId,
    required String title,
    required String description,
    required DateTime? startDateTime,
    required DateTime? endDateTime,
    required bool isAllDay,
    required bool isDone,
  }) = _ToDo;

  factory ToDo.fromJson(Map<String, dynamic> json) => _$ToDoFromJson(json);
}
