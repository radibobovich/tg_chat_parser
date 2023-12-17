// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/text_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextEntity _$TextEntityFromJson(Map<String, dynamic> json) => TextEntity(
      type: json['type'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$TextEntityToJson(TextEntity instance) =>
    <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
    };
