import 'package:json_annotation/json_annotation.dart';
import 'message.dart';

part '../generated/models/chat.g.dart';

@JsonSerializable()
class Chat {
  final String name;
  final String type;
  final int id;
  final List<Message> messages;

  Chat({
    required this.name,
    required this.type,
    required this.id,
    required this.messages,
  });

  factory Chat.fromJson(Map<String, dynamic> json) {
    try {
      return _$ChatFromJson(json);
    } catch (e) {
      print('Error parsing chat json: $e');
      rethrow;
    }
  }

  Map<String, dynamic> toJson() => _$ChatToJson(this);
}
