import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String name;
  @JsonKey(name: 'user_name')
  final String userName;
  final String email;
  @JsonKey(name: 'store_id')
  final int? storeId;
  final int verified;
  @JsonKey(name: 'channel_id')
  final String channelId;
  UserModel({
    required this.name,
    required this.userName,
    required this.email,
    required this.verified,
    required this.channelId,
    this.storeId,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
