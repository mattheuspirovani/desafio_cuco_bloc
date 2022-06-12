import 'package:json_annotation/json_annotation.dart';

part 'info.g.dart';

@JsonSerializable()
class Info {
  final int page;
  final int results;

  Info({required this.page, required this.results});

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}
