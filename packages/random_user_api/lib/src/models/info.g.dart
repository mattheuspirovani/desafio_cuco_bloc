// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Info',
      json,
      ($checkedConvert) {
        final val = Info(
          page: $checkedConvert('page', (v) => v as int),
          results: $checkedConvert('results', (v) => v as int),
        );
        return val;
      },
    );
