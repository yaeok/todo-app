// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ToDo _$ToDoFromJson(Map<String, dynamic> json) {
  return _ToDo.fromJson(json);
}

/// @nodoc
mixin _$ToDo {
  String get todoId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(
      toJson: FirestoreField.toTimestampJson,
      fromJson: FirestoreField.fromTimestamp)
  DateTime? get completedAt => throw _privateConstructorUsedError;
  @JsonKey(
      toJson: FirestoreField.toTimestampJson,
      fromJson: FirestoreField.fromTimestamp)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(
      toJson: FirestoreField.toTimestampJson,
      fromJson: FirestoreField.fromTimestamp)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(
      toJson: FirestoreField.toTimestampJson,
      fromJson: FirestoreField.fromTimestamp)
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDoCopyWith<ToDo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoCopyWith<$Res> {
  factory $ToDoCopyWith(ToDo value, $Res Function(ToDo) then) =
      _$ToDoCopyWithImpl<$Res, ToDo>;
  @useResult
  $Res call(
      {String todoId,
      String title,
      String description,
      bool isCompleted,
      @JsonKey(
          toJson: FirestoreField.toTimestampJson,
          fromJson: FirestoreField.fromTimestamp)
      DateTime? completedAt,
      @JsonKey(
          toJson: FirestoreField.toTimestampJson,
          fromJson: FirestoreField.fromTimestamp)
      DateTime? createdAt,
      @JsonKey(
          toJson: FirestoreField.toTimestampJson,
          fromJson: FirestoreField.fromTimestamp)
      DateTime? updatedAt,
      @JsonKey(
          toJson: FirestoreField.toTimestampJson,
          fromJson: FirestoreField.fromTimestamp)
      DateTime? deletedAt,
      bool isActive});
}

/// @nodoc
class _$ToDoCopyWithImpl<$Res, $Val extends ToDo>
    implements $ToDoCopyWith<$Res> {
  _$ToDoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
    Object? title = null,
    Object? description = null,
    Object? isCompleted = null,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToDoImplCopyWith<$Res> implements $ToDoCopyWith<$Res> {
  factory _$$ToDoImplCopyWith(
          _$ToDoImpl value, $Res Function(_$ToDoImpl) then) =
      __$$ToDoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String todoId,
      String title,
      String description,
      bool isCompleted,
      @JsonKey(
          toJson: FirestoreField.toTimestampJson,
          fromJson: FirestoreField.fromTimestamp)
      DateTime? completedAt,
      @JsonKey(
          toJson: FirestoreField.toTimestampJson,
          fromJson: FirestoreField.fromTimestamp)
      DateTime? createdAt,
      @JsonKey(
          toJson: FirestoreField.toTimestampJson,
          fromJson: FirestoreField.fromTimestamp)
      DateTime? updatedAt,
      @JsonKey(
          toJson: FirestoreField.toTimestampJson,
          fromJson: FirestoreField.fromTimestamp)
      DateTime? deletedAt,
      bool isActive});
}

/// @nodoc
class __$$ToDoImplCopyWithImpl<$Res>
    extends _$ToDoCopyWithImpl<$Res, _$ToDoImpl>
    implements _$$ToDoImplCopyWith<$Res> {
  __$$ToDoImplCopyWithImpl(_$ToDoImpl _value, $Res Function(_$ToDoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
    Object? title = null,
    Object? description = null,
    Object? isCompleted = null,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? isActive = null,
  }) {
    return _then(_$ToDoImpl(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToDoImpl implements _ToDo {
  const _$ToDoImpl(
      {required this.todoId,
      required this.title,
      required this.description,
      required this.isCompleted,
      @JsonKey(
          toJson: FirestoreField.toTimestampJson,
          fromJson: FirestoreField.fromTimestamp)
      required this.completedAt,
      @JsonKey(
          toJson: FirestoreField.toTimestampJson,
          fromJson: FirestoreField.fromTimestamp)
      required this.createdAt,
      @JsonKey(
          toJson: FirestoreField.toTimestampJson,
          fromJson: FirestoreField.fromTimestamp)
      required this.updatedAt,
      @JsonKey(
          toJson: FirestoreField.toTimestampJson,
          fromJson: FirestoreField.fromTimestamp)
      required this.deletedAt,
      required this.isActive});

  factory _$ToDoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToDoImplFromJson(json);

  @override
  final String todoId;
  @override
  final String title;
  @override
  final String description;
  @override
  final bool isCompleted;
  @override
  @JsonKey(
      toJson: FirestoreField.toTimestampJson,
      fromJson: FirestoreField.fromTimestamp)
  final DateTime? completedAt;
  @override
  @JsonKey(
      toJson: FirestoreField.toTimestampJson,
      fromJson: FirestoreField.fromTimestamp)
  final DateTime? createdAt;
  @override
  @JsonKey(
      toJson: FirestoreField.toTimestampJson,
      fromJson: FirestoreField.fromTimestamp)
  final DateTime? updatedAt;
  @override
  @JsonKey(
      toJson: FirestoreField.toTimestampJson,
      fromJson: FirestoreField.fromTimestamp)
  final DateTime? deletedAt;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'ToDo(todoId: $todoId, title: $title, description: $description, isCompleted: $isCompleted, completedAt: $completedAt, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDoImpl &&
            (identical(other.todoId, todoId) || other.todoId == todoId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, todoId, title, description,
      isCompleted, completedAt, createdAt, updatedAt, deletedAt, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDoImplCopyWith<_$ToDoImpl> get copyWith =>
      __$$ToDoImplCopyWithImpl<_$ToDoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToDoImplToJson(
      this,
    );
  }
}

abstract class _ToDo implements ToDo {
  const factory _ToDo(
      {required final String todoId,
      required final String title,
      required final String description,
      required final bool isCompleted,
      @JsonKey(
          toJson: FirestoreField.toTimestampJson,
          fromJson: FirestoreField.fromTimestamp)
      required final DateTime? completedAt,
      @JsonKey(
          toJson: FirestoreField.toTimestampJson,
          fromJson: FirestoreField.fromTimestamp)
      required final DateTime? createdAt,
      @JsonKey(
          toJson: FirestoreField.toTimestampJson,
          fromJson: FirestoreField.fromTimestamp)
      required final DateTime? updatedAt,
      @JsonKey(
          toJson: FirestoreField.toTimestampJson,
          fromJson: FirestoreField.fromTimestamp)
      required final DateTime? deletedAt,
      required final bool isActive}) = _$ToDoImpl;

  factory _ToDo.fromJson(Map<String, dynamic> json) = _$ToDoImpl.fromJson;

  @override
  String get todoId;
  @override
  String get title;
  @override
  String get description;
  @override
  bool get isCompleted;
  @override
  @JsonKey(
      toJson: FirestoreField.toTimestampJson,
      fromJson: FirestoreField.fromTimestamp)
  DateTime? get completedAt;
  @override
  @JsonKey(
      toJson: FirestoreField.toTimestampJson,
      fromJson: FirestoreField.fromTimestamp)
  DateTime? get createdAt;
  @override
  @JsonKey(
      toJson: FirestoreField.toTimestampJson,
      fromJson: FirestoreField.fromTimestamp)
  DateTime? get updatedAt;
  @override
  @JsonKey(
      toJson: FirestoreField.toTimestampJson,
      fromJson: FirestoreField.fromTimestamp)
  DateTime? get deletedAt;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$ToDoImplCopyWith<_$ToDoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
