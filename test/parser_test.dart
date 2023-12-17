import 'dart:io';

import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../bin/models/chat.dart';
import '../bin/parser.dart';

main() {
  test('Parse chat', () {
    const path = './test/data.json';

    // Parse the chat json file.
    final chatParser = ChatParser(path);
    final chat = chatParser.readChat();
    expect(chat, isA<Chat>());
  });

  test('get messages lines by uid', () {
    const path = './test/data.json';
    final uid = File('./test/test_uid.txt').readAsStringSync().trim();
    // Parse the chat json file.
    final chatParser = ChatParser(path);
    final chat = chatParser.readChat();
    final messages = chatParser.getMessagesByUid(chat, uid);
    expect(messages, isA<List<String>>());
    expect(messages.length, 2);
  });

  test('read full file', () {
    const path = './result.json';
    final uid = File('./test/test_uid.txt').readAsStringSync().trim();

    final chatParser = ChatParser(path);
    final chat = chatParser.readChat();
    expect(chat, isA<Chat>());

    final messages = chatParser.getMessagesByUid(chat, uid);
    expect(messages, isA<List<String>>());
  });
}
