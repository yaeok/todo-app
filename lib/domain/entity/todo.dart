// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_todo/infrastructure/firestore/firestore.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class ToDo with _$ToDo {
  const factory ToDo({
    required String todoId,
    required String title,
    required String description,
    required bool isCompleted,
    @JsonKey(
      toJson: FirestoreField.toTimestampJson,
      fromJson: FirestoreField.fromTimestamp,
    )
    required DateTime? completedAt,
    @JsonKey(
      toJson: FirestoreField.toTimestampJson,
      fromJson: FirestoreField.fromTimestamp,
    )
    required DateTime? createdAt,
    @JsonKey(
      toJson: FirestoreField.toTimestampJson,
      fromJson: FirestoreField.fromTimestamp,
    )
    required DateTime? updatedAt,
    @JsonKey(
      toJson: FirestoreField.toTimestampJson,
      fromJson: FirestoreField.fromTimestamp,
    )
    required DateTime? deletedAt,
    required bool isActive,
  }) = _ToDo;

  factory ToDo.fromJson(Map<String, dynamic> json) => _$ToDoFromJson(json);
}
