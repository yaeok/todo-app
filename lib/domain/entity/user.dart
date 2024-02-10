// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_todo/infrastructure/firestore/firestore.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String uid,
    required String username,
    required String email,
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
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
