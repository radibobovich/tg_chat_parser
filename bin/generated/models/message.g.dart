// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      id: json['id'] as int,
      type: json['type'] as String,
      date: json['date'] as String,
      dateUnixtime: json['date_unixtime'] as String,
      from: json['from'] as String?,
      fromId: json['from_id'] as String?,
      actor: json['actor'] as String?,
      actorId: json['actor_id'] as String?,
      photo: json['photo'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      text: json['text'],
      textEntities: (json['text_entities'] as List<dynamic>)
          .map((e) => TextEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      stickerEmoji: json['sticker_emoji'] as String?,
      thumbnail: json['thumbnail'] as String?,
      media_type: json['media_type'] as String?,
      mime_type: json['mime_type'] as String?,
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'date': instance.date,
      'date_unixtime': instance.dateUnixtime,
      'from': instance.from,
      'from_id': instance.fromId,
      'actor': instance.actor,
      'actor_id': instance.actorId,
      'photo': instance.photo,
      'width': instance.width,
      'height': instance.height,
      'text': instance.text,
      'text_entities': instance.textEntities,
      'sticker_emoji': instance.stickerEmoji,
      'thumbnail': instance.thumbnail,
      'media_type': instance.media_type,
      'mime_type': instance.mime_type,
    };
