// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterToDoState {
  ToDo get recTodo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterToDoStateCopyWith<RegisterToDoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterToDoStateCopyWith<$Res> {
  factory $RegisterToDoStateCopyWith(
          RegisterToDoState value, $Res Function(RegisterToDoState) then) =
      _$RegisterToDoStateCopyWithImpl<$Res, RegisterToDoState>;
  @useResult
  $Res call({ToDo recTodo});

  $ToDoCopyWith<$Res> get recTodo;
}

/// @nodoc
class _$RegisterToDoStateCopyWithImpl<$Res, $Val extends RegisterToDoState>
    implements $RegisterToDoStateCopyWith<$Res> {
  _$RegisterToDoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recTodo = null,
  }) {
    return _then(_value.copyWith(
      recTodo: null == recTodo
          ? _value.recTodo
          : recTodo // ignore: cast_nullable_to_non_nullable
              as ToDo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ToDoCopyWith<$Res> get recTodo {
    return $ToDoCopyWith<$Res>(_value.recTodo, (value) {
      return _then(_value.copyWith(recTodo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterToDoStateImplCopyWith<$Res>
    implements $RegisterToDoStateCopyWith<$Res> {
  factory _$$RegisterToDoStateImplCopyWith(_$RegisterToDoStateImpl value,
          $Res Function(_$RegisterToDoStateImpl) then) =
      __$$RegisterToDoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ToDo recTodo});

  @override
  $ToDoCopyWith<$Res> get recTodo;
}

/// @nodoc
class __$$RegisterToDoStateImplCopyWithImpl<$Res>
    extends _$RegisterToDoStateCopyWithImpl<$Res, _$RegisterToDoStateImpl>
    implements _$$RegisterToDoStateImplCopyWith<$Res> {
  __$$RegisterToDoStateImplCopyWithImpl(_$RegisterToDoStateImpl _value,
      $Res Function(_$RegisterToDoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recTodo = null,
  }) {
    return _then(_$RegisterToDoStateImpl(
      recTodo: null == recTodo
          ? _value.recTodo
          : recTodo // ignore: cast_nullable_to_non_nullable
              as ToDo,
    ));
  }
}

/// @nodoc

class _$RegisterToDoStateImpl extends _RegisterToDoState {
  const _$RegisterToDoStateImpl({required this.recTodo}) : super._();

  @override
  final ToDo recTodo;

  @override
  String toString() {
    return 'RegisterToDoState(recTodo: $recTodo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterToDoStateImpl &&
            (identical(other.recTodo, recTodo) || other.recTodo == recTodo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recTodo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterToDoStateImplCopyWith<_$RegisterToDoStateImpl> get copyWith =>
      __$$RegisterToDoStateImplCopyWithImpl<_$RegisterToDoStateImpl>(
          this, _$identity);
}

abstract class _RegisterToDoState extends RegisterToDoState {
  const factory _RegisterToDoState({required final ToDo recTodo}) =
      _$RegisterToDoStateImpl;
  const _RegisterToDoState._() : super._();

  @override
  ToDo get recTodo;
  @override
  @JsonKey(ignore: true)
  _$$RegisterToDoStateImplCopyWith<_$RegisterToDoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
