// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Name _$NameFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Name',
      json,
      ($checkedConvert) {
        final val = Name(
          title: $checkedConvert('title', (v) => v as String),
          first: $checkedConvert('first', (v) => v as String),
          last: $checkedConvert('last', (v) => v as String),
        );
        return val;
      },
    );
