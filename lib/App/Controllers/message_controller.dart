import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../Model/chat_message.dart';
import '../Utils/Const/app_images.dart';

class MessagesController extends GetxController{
  var messages = <ChatMessage>[].obs; // Observable list for messages
  TextEditingController messageController = TextEditingController();

  void sendMessage(String message) {
    if (message.isNotEmpty) {
      messages.add(ChatMessage(
        text: message,
        timestamp: DateTime.now(),
        isMe: true,
        image:AppImages.testImage2,
      ));
      Future.delayed(const Duration(seconds: 1), () {
        messages.add(ChatMessage(
          text: "This is respnse by flutter app developer ",
          timestamp: DateTime.now(),
          image:AppImages.testImage2,
          isMe: false,
        ));
      });
    }
  }
}