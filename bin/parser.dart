import 'dart:convert';
import 'dart:io';

import 'models/chat.dart';

class ChatParser {
  final String filePath;
  ChatParser(this.filePath);

  Chat readChat() {
    print('Reading json file from $filePath');
    final file = File(filePath);
    final json = file.readAsStringSync();
    try {
      final chat = Chat.fromJson(jsonDecode(json));
      print('Chat name: ${chat.name}');
      print('Chat type: ${chat.type}');
      print('Chat id: ${chat.id}');
      print('Chat messages: ${chat.messages.length}');
      return chat;
    } catch (e) {
      print('Error parsing json file: $e');
      rethrow;
    }
  }

  List<String> getMessagesByUid(Chat chat, String uid,
      {bool excludeEmptyLines = true}) {
    print('Getting messages by uid: $uid');
    final messages = chat.messages
        .where((message) => message.fromId == uid || message.actorId == uid)
        .map((message) {
      if (message.text is String) {
        return message.text as String;
      } else if (message.text is List) {
        // TODO: Handle lists of text
        return '';
      } else {
        throw Exception('Text field is not a string or list: $message');
      }
    }).toList();
    print('Found ${messages.length} messages');
    if (excludeEmptyLines) {
      return messages.where((message) => message.isNotEmpty).toList();
    }
    return messages;
  }
}
