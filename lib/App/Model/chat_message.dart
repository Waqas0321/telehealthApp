class ChatMessage {
  final String text;
  final String image;
  final DateTime timestamp;
  final bool isMe;

  ChatMessage( {
    required this.image,
    required this.text,
    required this.timestamp,
    required this.isMe,
  });
}