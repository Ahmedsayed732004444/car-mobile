class Message {
  final int id;
  final int conversationId;
  final int senderId;
  final String body;
  final String image;
  final String senderName;
  final bool isShippingRequest;
  final bool read;
  final String createdAt;

  Message({
     this.id = 0,
     this.conversationId = 0,
     this.senderId = 0,
     this.body = '',
     this.image = '',
     this.senderName = '',
     this.isShippingRequest = false,
     this.read = false,
     this.createdAt = '',
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'] ?? 0,
      conversationId: json['conversation_id'] ?? 0,
      senderId: json['sender_id'] ?? 0,
      body: json['body'] ?? '',
      image: json['image'] ?? '',
      senderName: json['sender_name'] ?? '',
      isShippingRequest: json['is_shipping_request'] == true || json['is_shipping_request'] == 1 || json['is_shipping_request'] == '1',
      read: json['read'] == true || json['read'] == 1 || json['read'] == '1',
      createdAt: json['date_sent'] ?? '',
    );
  }
}
