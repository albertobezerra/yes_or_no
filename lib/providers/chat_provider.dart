import 'package:flutter/material.dart';
import 'package:yes_or_no/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  List<Message> messageList = [
    Message(text: 'Olá amor', fromWho: FromWho.me),
    Message(text: 'Já voltasse do trabalho', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);
    notifyListeners();
    moveScroolToBottom();
  }

  Future<void> moveScroolToBottom() async {
    await Future.delayed(const Duration(
        milliseconds: 100)); // dar a sensação de retorno do servidor.
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
