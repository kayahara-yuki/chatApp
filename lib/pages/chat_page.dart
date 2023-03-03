import 'package:chat_app/state/chat_page_state/chat_page_state.dart';
import 'package:chat_app/state/login_page_state.dart';
import 'package:chat_app/view_model/chat_page_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<ChatPageViewModel, ChatPageState>(
          create: (_) => ChatPageViewModel(),
        ),
      ],
      child: _ChatPage(),
    );
  }
}

class _ChatPage extends StatelessWidget {
  const _ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final id = context.watch<LoginPageState>().id.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '名字 名前',
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 18, color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.teal,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 3, 35),
        child: Row(
          children: [
            SizedBox(
              width: 322,
              height: 32,
              child: TextFormField(
                onChanged: (message) {
                  context.read<ChatPageViewModel>().setMessage(message);
                },
                decoration: InputDecoration(
                  fillColor: Colors.white38,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.white38),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () async {
                await context.read<ChatPageViewModel>().finish(id);
              },
              child: Text('送信'),
            ),
          ],
        ),
      ),
    );
  }
}
