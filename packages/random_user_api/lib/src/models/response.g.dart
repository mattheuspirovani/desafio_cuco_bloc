// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Response _$ResponseFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Response',
      json,
      ($checkedConvert) {
        final val = Response(
          results: $checkedConvert(
              'results',
              (v) => (v as List<dynamic>)
                  .map((e) => User.fromJson(e as Map<String, dynamic>))
                  .toList()),
          info: $checkedConvert(
              'info', (v) => Info.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );
