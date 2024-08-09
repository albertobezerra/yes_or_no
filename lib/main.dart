import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_or_no/providers/chat_provider.dart';
import 'package:yes_or_no/screens/chat/chat_screen.dart';

import 'config/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ChatProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(seletordeCor: 3).theme(),
        title: 'Yes No App',
        home: const ChatScreen(),
      ),
    );
  }
}
