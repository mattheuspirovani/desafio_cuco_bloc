// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => $checkedCreate(
      'User',
      json,
      ($checkedConvert) {
        final val = User(
          name: $checkedConvert(
              'name', (v) => Name.fromJson(v as Map<String, dynamic>)),
          email: $checkedConvert('email', (v) => v as String),
          picture: $checkedConvert(
              'picture', (v) => Picture.fromJson(v as Map<String, dynamic>)),
          cellphone: $checkedConvert('cell', (v) => v as String),
          phone: $checkedConvert('phone', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'cellphone': 'cell'},
    );
