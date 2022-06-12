import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'response.g.dart';

@JsonSerializable()
class Response {
  final List<User> results;
  final Info info;

  Response({required this.results, required this.info});

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}
