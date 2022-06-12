// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'picture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Picture _$PictureFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Picture',
      json,
      ($checkedConvert) {
        final val = Picture(
          medium: $checkedConvert('medium', (v) => v as String),
          large: $checkedConvert('large', (v) => v as String),
          thumbnail: $checkedConvert('thumbnail', (v) => v as String),
        );
        return val;
      },
    );
