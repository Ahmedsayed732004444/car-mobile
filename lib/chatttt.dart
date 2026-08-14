import 'dart:convert';
import 'package:car_mediator_mobile/core/data_sources/local/secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:http/http.dart' as http;

class ChatScreen2 extends StatefulWidget {
  @override
  State<ChatScreen2> createState() => _ChatScreen2State();
}

class _ChatScreen2State extends State<ChatScreen2> {
  final TextEditingController _controller = TextEditingController();
  final List<String> messages = [];
  late WebSocketChannel channel;

  final String laravelIp = '192.168.1.34'; // استبدل بـ IP الكمبيوتر
  final String reverbAppKey = '0z58lxjbuvh5gyymgd0n'; // من .env

  @override
  void initState() {
    super.initState();
    connectWebSocket();
  }

  Future<void> connectWebSocket() async {
    channel = WebSocketChannel.connect(
      Uri.parse(
        'ws://$laravelIp:8080/app/$reverbAppKey',
      ),
    );

    // الاشتراك في القناة العامة
    // channel.sink.add(jsonEncode({
    //   "event": "pusher:subscribe",
    //   "data": {"channel": "chat"}
    // }));
    final String? token = await SecureStorage.getToken();
    print(token);
    channel.sink.add(jsonEncode({
      "event": "pusher:subscribe",
      "data": {
        "auth": token,
        "channel": "private-chat.2.3"
      }
    }));

    // الاستماع للرسائل
    // channel.stream.listen((event) {
    //   final decoded = jsonDecode(event);
    //   print("New message channel.stream.listen ----------------"+ decoded["event"]);
    //   if (decoded["event"] == "message.sent") {
    //     print("message.sent----------------");
    //     final data = jsonDecode(decoded['data']);
    //     setState(() {
    //       print("${data['user']}: ${data['message']}");
    //       messages.add("${data['user']}: ${data['message']}");
    //     });
    //   }
   // });
    channel.stream.listen((event) {
      final decoded = jsonDecode(event);
      print("New message channel.stream.listen ----------------"+ decoded["event"]);
      switch (decoded['event']) {
        case 'pusher:ping':
          channel.sink.add(jsonEncode({"event": "pusher:pong"}));
          break;
        case 'message.sent':
          final data = jsonDecode(decoded['data'] );;
          print("New message from ${data['user']}: ${data['message']}");
          break;
        default:
          print("Other event: ${decoded['event']}");
      }
    });

  }

  // void sendMessage(String text) async {
  //   if (text.trim().isEmpty) return;
  //
  //   // إرسال POST إلى Laravel API
  //   final response = await http.post(
  //     Uri.parse('http://$laravelIp/api/message'),
  //     body: {
  //       'user': 'UserFlutter', // يمكنك تغيير اسم المستخدم
  //       'message': text,
  //     },
  //   );
  //
  //   if (response.statusCode == 200) {
  //     print('--------------------------statusCodee 200');
  //     _controller.clear();
  //   } else {
  //     print('Failed to send message');
  //   }
  // }
  Future<void> sendMessage(String msg) async {
    final String? token = await SecureStorage.getToken();
    await http.post(
      Uri.parse('http://192.168.1.34/api/message'),
      headers: {'Authorization': 'Bearer $token'},
      body: {
        'from_user_id': '2',
        'to_user_id': '3',
        'message': msg,
      },
    );
  }


  @override
  void dispose() {
    channel.sink.close();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Public Chat')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(messages[index]),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () => sendMessage(_controller.text),
                  child: Text('Send'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
