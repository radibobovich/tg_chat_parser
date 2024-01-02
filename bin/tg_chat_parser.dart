import 'dart:io';

import 'package:args/args.dart';

import 'parser.dart';

const String version = '0.0.1';

ArgParser buildParser() {
  return ArgParser()
    ..addFlag(
      'help',
      abbr: 'h',
      negatable: false,
      help: 'Print this usage information.',
    )
    ..addFlag(
      'verbose',
      abbr: 'v',
      negatable: false,
      help: 'Show additional command output.',
    )
    ..addFlag(
      'version',
      negatable: false,
      help: 'Print the tool version.',
    )
    ..addOption(
      'uid',
      abbr: 'u',
      help: 'The uid of the user to get messages for.',
    );
}

void printUsage(ArgParser argParser) {
  print('Usage: dart tg_chat_parser.dart <path> -u <uid>');
  print('i.e. dart tg_chat_parser.dart result.json -u user123456789');
  print(argParser.usage);
}

void main(List<String> arguments) {
  final ArgParser argParser = buildParser();
  try {
    final ArgResults results = argParser.parse(arguments);
    bool verbose = false;

    // Process the parsed arguments.
    if (results.wasParsed('help')) {
      printUsage(argParser);
      return;
    }
    if (results.wasParsed('version')) {
      print('tg_chat_parser version: $version');
      return;
    }
    if (results.wasParsed('verbose')) {
      verbose = true;
    }

    // Act on the arguments provided.
    // print('Positional arguments: ${results.rest}');
    // if (verbose) {
    //   print('[VERBOSE] All arguments: ${results.arguments}');
    // }

    if (results.rest.length != 1) {
      printUsage(argParser);
      return;
    }

    if (!results.wasParsed('uid')) {
      printUsage(argParser);
      return;
    }
    // Parse the chat json file.
    final filePath = results.rest[0];
    final chatParser = ChatParser(filePath);
    final chat = chatParser.readChat();

    // Get the messages by uid.
    final uid = results['uid'];

    final messages = chatParser.getMessagesByUid(chat, uid);

    // write the messages to a file.
    final file = File('messages.txt');
    file.writeAsStringSync(messages.join('\n'));

    print('Messages written to messages.txt');
  } on FormatException catch (e) {
    // Print usage information if an invalid argument was provided.
    print(e.message);
    print('');
    printUsage(argParser);
  }
}
