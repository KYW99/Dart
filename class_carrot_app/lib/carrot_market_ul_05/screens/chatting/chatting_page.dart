import 'package:class_carrot_app/carrot_market_ul_05/models/chat_message.dart';
import 'package:class_carrot_app/carrot_market_ul_05/screens/chatting/components/chat_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        title: Row(
          children: [
            Text('채팅'),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ChatContainer(chatMessage: chatMessageList[index]);
        },
        itemCount: chatMessageList.length,
      ),
    );
  }
}
