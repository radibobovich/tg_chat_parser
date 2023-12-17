import 'package:json_annotation/json_annotation.dart';

part '../generated/models/text_entity.g.dart';

@JsonSerializable()
class TextEntity {
  final String type;
  final String text;

  TextEntity({
    required this.type,
    required this.text,
  });

  factory TextEntity.fromJson(Map<String, dynamic> json) =>
      _$TextEntityFromJson(json);

  Map<String, dynamic> toJson() => _$TextEntityToJson(this);
}
