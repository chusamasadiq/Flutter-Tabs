import 'package:flutter/material.dart';
import 'package:tabs/components/button.dart';
import '../components/textfield.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
              hintText: 'Email',
              preIcon: Icons.email_outlined,
              controller: _emailController,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            TextFieldWidget(
              hintText: 'Password',
              preIcon: Icons.lock_outline,
              controller: _passwordController,
              postIcon: Icons.remove_red_eye_outlined,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            ButtonWidget(height: 0.06, color: Colors.red, title: 'Login', onClick: ()=>print('Usama'))
          ],
        ),
      ),
    );
  }
}
