// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      uid: json['uid'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      createdAt: FirestoreField.fromTimestamp(json['createdAt'] as Timestamp?),
      updatedAt: FirestoreField.fromTimestamp(json['updatedAt'] as Timestamp?),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'username': instance.username,
      'email': instance.email,
      'createdAt': FirestoreField.toTimestampJson(instance.createdAt),
      'updatedAt': FirestoreField.toTimestampJson(instance.updatedAt),
    };
