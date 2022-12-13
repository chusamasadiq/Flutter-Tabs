import 'package:flutter/material.dart';
import 'package:tabs/screens/register_screen.dart';
import 'chat_screen.dart';
import 'contact_screen.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Tabs'),
          bottom: TabBar(
            tabs: [
              Icon(Icons.app_registration),
              Icon(Icons.login),
              Icon(Icons.chat),
              Icon(Icons.contact_mail)

            ],
          ),
        ),
        body: TabBarView(
          children: [
            RegisterScreen(),
            LoginScreen(),
            ChatScreen(),
            ContactScreen(),
          ],
        ),
      ),
    );
  }
}
