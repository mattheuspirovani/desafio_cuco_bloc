import 'package:json_annotation/json_annotation.dart';

import 'name.dart';
import 'picture.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final Name name;
  final String email;
  @JsonKey(name: 'cell')
  final String cellphone;
  final String phone;
  final Picture picture;

  User(
      {required this.name,
      required this.email,
      required this.picture,
      required this.cellphone,
      required this.phone});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
