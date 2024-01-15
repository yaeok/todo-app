import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_todo/domain/entity/user.dart';

part 'current_user_state.freezed.dart';

@freezed
class CurrentUserState with _$CurrentUserState {
  const factory CurrentUserState({
    User? user,
  }) = _CurrentUserState;
  const CurrentUserState._();
}
