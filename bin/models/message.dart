// ignore_for_file: non_constant_identifier_names
import 'package:json_annotation/json_annotation.dart';

import 'text_entity.dart';

part '../generated/models/message.g.dart';

@JsonSerializable()
class Message {
  final int id;
  final String type;
  final String date;
  @JsonKey(name: 'date_unixtime')
  final String dateUnixtime;
  final String? from;
  @JsonKey(name: 'from_id')
  final String? fromId;

  final String? actor;
  @JsonKey(name: 'actor_id')
  final String? actorId;

  final String? photo;
  final int? width;
  final int? height;

  final dynamic text;
  @JsonKey(name: 'text_entities')
  final List<TextEntity> textEntities;
  @JsonKey(name: 'sticker_emoji')
  final String? stickerEmoji;
  final String? thumbnail;
  final String? media_type;
  final String? mime_type;

  Message({
    required this.id,
    required this.type,
    required this.date,
    required this.dateUnixtime,
    this.from,
    this.fromId,
    this.actor,
    this.actorId,
    this.photo,
    this.width,
    this.height,
    required this.text,
    required this.textEntities,
    this.stickerEmoji,
    this.thumbnail,
    this.media_type,
    this.mime_type,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    try {
      return _$MessageFromJson(json);
    } catch (e) {
      print('Error parsing message json: $e');
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
