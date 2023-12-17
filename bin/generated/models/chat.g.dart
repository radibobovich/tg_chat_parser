// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chat _$ChatFromJson(Map<String, dynamic> json) => Chat(
      name: json['name'] as String,
      type: json['type'] as String,
      id: json['id'] as int,
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChatToJson(Chat instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'id': instance.id,
      'messages': instance.messages,
    };
