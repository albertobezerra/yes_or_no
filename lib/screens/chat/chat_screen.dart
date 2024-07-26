import 'package:flutter/material.dart';

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
    );
  }
}
