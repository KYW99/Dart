import 'package:class_carrot_app/carrot_market_ul_01/theme.dart';
import 'package:flutter/material.dart';

import '../../../models/chat_message.dart';

class ChatDetail extends StatelessWidget {
  final ChatMessage chatMessage;
  const ChatDetail({required this.chatMessage, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // 필요에 따라 간격 조정
          children: [
            Text(
              chatMessage.sender,
              style: textTheme().bodyLarge,
            ),
            Text(
              '${chatMessage.location} ${chatMessage.sendDate}',
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        Text(
          chatMessage.message,
        ),
      ],
    );
  }
}
