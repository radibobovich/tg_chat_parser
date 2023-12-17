# Simple telegram chat parser

Extracts text messages sent by user with given uid from chat history file.
You need to export chat history from telegram desktop app to json file.

Usage: 

```dart run .\bin\tg_chat_parser.dart <pat-to-json> -u <uid>```

for example.:

``` dart run .\bin\tg_chat_parser.dart .\chat.json -u user123456789```

Messages are going to be written in ```messages.txt```.

