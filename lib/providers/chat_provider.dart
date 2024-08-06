import 'package:flutter/material.dart';
import 'package:yes_or_no/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'Olá amor', fromWho: FromWho.me),
    Message(text: 'Já voltasse do trabalho', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {}
}
