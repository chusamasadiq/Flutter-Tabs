import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/textfield.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _messageController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFieldWidget(
              hintText: 'Message',
              preIcon: Icons.chat,
              controller: _messageController,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            ButtonWidget(height: 0.06, color: Colors.red, title: 'Send', onClick: ()=>print('Usama'))
          ],
        ),
      ),
    );
  }
}
