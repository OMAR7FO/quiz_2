import 'package:json_annotation/json_annotation.dart';
part 'error_model.g.dart';

@JsonSerializable()
class ErrorModel {
  @JsonKey(name: 'user_name', defaultValue: [])
  final List<String> userName;
  @JsonKey(defaultValue: [])
  final List<String> email;
  ErrorModel({required this.email, required this.userName});
  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}
