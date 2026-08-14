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
      senderId: json['sender_id'] ?? 0,
      body: json['body'] ?? '',
      image: json['image'] ?? '',
      senderName: json['sender_name'] ?? '',
      isShippingRequest: json['is_shipping_request'],
      read: (json['read'] ?? 0) == 1,
      createdAt: json['date_sent'] ?? '',
    );
  }
}
