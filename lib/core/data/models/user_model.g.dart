// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      name: json['name'] as String,
      userName: json['user_name'] as String,
      email: json['email'] as String,
      verified: (json['verified'] as num).toInt(),
      channelId: json['channel_id'] as String,
      storeId: (json['store_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'user_name': instance.userName,
      'email': instance.email,
      'store_id': instance.storeId,
      'verified': instance.verified,
      'channel_id': instance.channelId,
    };
