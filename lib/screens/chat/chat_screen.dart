import 'package:flutter/material.dart';
import 'package:yes_or_no/screens/widgets/chat/her_message_bubble.dart';
import 'package:yes_or_no/screens/widgets/chat/my_message_bubble.dart';
import 'package:yes_or_no/screens/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 12),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://f.i.uol.com.br/fotografia/2023/02/02/167536124663dbfbdee49b7_1675361246_1x1_md.jpg'),
          ),
        ),
        title: const Text('Meu amor ❤️'),
        centerTitle: false,
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: (ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const HerMessageBubble()
                      : const MyMessageBubble();
                },
              )),
            ),
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
