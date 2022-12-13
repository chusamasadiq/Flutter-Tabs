import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/textfield.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

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
              hintText: 'Full name',
              preIcon: Icons.person,
              controller: _fullnameController,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            TextFieldWidget(
              hintText: 'Email',
              preIcon: Icons.email_outlined,
              controller: _emailController,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            TextFieldWidget(
              hintText: 'Message',
              preIcon: Icons.message,
              controller: _messageController,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            ButtonWidget(height: 0.06, color: Colors.red, title: 'Contact Us', onClick: ()=>print('Usama'))
          ],
        ),
      ),
    );
  }
}
