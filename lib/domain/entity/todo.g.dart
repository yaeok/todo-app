// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToDoImpl _$$ToDoImplFromJson(Map<String, dynamic> json) => _$ToDoImpl(
      todoId: json['todoId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      isCompleted: json['isCompleted'] as bool,
      completedAt:
          FirestoreField.fromTimestamp(json['completedAt'] as Timestamp?),
      createdAt: FirestoreField.fromTimestamp(json['createdAt'] as Timestamp?),
      updatedAt: FirestoreField.fromTimestamp(json['updatedAt'] as Timestamp?),
      deletedAt: FirestoreField.fromTimestamp(json['deletedAt'] as Timestamp?),
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$ToDoImplToJson(_$ToDoImpl instance) =>
    <String, dynamic>{
      'todoId': instance.todoId,
      'title': instance.title,
      'description': instance.description,
      'isCompleted': instance.isCompleted,
      'completedAt': FirestoreField.toTimestampJson(instance.completedAt),
      'createdAt': FirestoreField.toTimestampJson(instance.createdAt),
      'updatedAt': FirestoreField.toTimestampJson(instance.updatedAt),
      'deletedAt': FirestoreField.toTimestampJson(instance.deletedAt),
      'isActive': instance.isActive,
    };
