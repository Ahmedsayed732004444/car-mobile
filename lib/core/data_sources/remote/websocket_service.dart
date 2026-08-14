import 'dart:convert';
import 'package:car_mediator_mobile/core/data_sources/local/secure_storage.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/io.dart';

class WebSocketService {
  static final WebSocketService _instance = WebSocketService._internal();
  factory WebSocketService() => _instance;
  WebSocketService._internal();

  WebSocketChannel? _channel;
  final String _baseUrl = '192.168.1.34';

  Future<void> connectToConversation(int conversationId) async {
    final String? token = await SecureStorage.getToken();
    print(token);

    final wsUrl = 'ws://$_baseUrl:8080/app/0z58lxjbuvh5gyymgd0n';

    try {
      _channel = IOWebSocketChannel.connect(
        wsUrl,
        headers: {'Authorization': 'Bearer $token'},
      );

      // الاشتراك في قناة المحادثة
      _subscribeToConversation(conversationId);
    } catch (e) {
      print('WebSocket connection error: $e');
    }
  }

  void _subscribeToConversation(int conversationId) {
    final subscribeMessage = {
      "event": "subscribe",
      "channel": "conversation.$conversationId"
    };

    _channel?.sink.add(jsonEncode(subscribeMessage));
  }

  void sendMessage(Map<String, dynamic> message) {
    if (_channel != null) {
      _channel!.sink.add(jsonEncode(message));
    }
  }

  Stream<dynamic> get stream {
    return _channel?.stream ?? Stream.empty();
  }

  void disconnect() {
    _channel?.sink.close();
  }

  bool get isConnected {
    return _channel != null;
  }
}